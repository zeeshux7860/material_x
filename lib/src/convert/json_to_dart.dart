import 'dart:collection';
import 'dart:convert' as Convert;
import 'dart:math';
import 'package:json_ast/json_ast.dart'
    show ArrayNode, LiteralNode, Node, ObjectNode, Settings, parse;

import 'package:dart_style/dart_style.dart';

dartGenerate(String name, String value) async {
  final createGenerator = new ModelGenerator(name);

  DartCode darcode = createGenerator.generateDartClasses(value);

  return darcode;
}

const Map<String, bool> PRIMITIVE_TYPES = const {
  'int': true,
  'double': true,
  'String': true,
  'bool': true,
  'DateTime': false,
  'List<DateTime>': false,
  'List<int>': true,
  'List<double>': true,
  'List<String>': true,
  'List<bool>': true,
  'Null': true,
};

enum ListType { Object, String, Double, Int, Null }

class MergeableListType {
  final ListType listType;
  final bool isAmbigous;

  MergeableListType(this.listType, this.isAmbigous);
}

MergeableListType mergeableListType(List<dynamic> list) {
  ListType t = ListType.Null;
  bool isAmbigous = false;
  list.forEach((e) {
    ListType inferredType;
    if (e.runtimeType == 'int') {
      inferredType = ListType.Int;
    } else if (e.runtimeType == 'double') {
      inferredType = ListType.Double;
    } else if (e.runtimeType == 'string') {
      inferredType = ListType.String;
    } else if (e is Map) {
      inferredType = ListType.Object;
    }
    if (t != ListType.Null && t != inferredType) {
      isAmbigous = true;
    }
    t = inferredType;
  });
  return MergeableListType(t, isAmbigous);
}

String camelCase(String text) {
  String capitalize(Match m) =>
      m[0].substring(0, 1).toUpperCase() + m[0].substring(1);
  String skip(String s) => "";
  return text.splitMapJoin(new RegExp(r'[a-zA-Z0-9]+'),
      onMatch: capitalize, onNonMatch: skip);
}

String camelCaseFirstLower(String text) {
  final camelCaseText = camelCase(text);
  final firstChar = camelCaseText.substring(0, 1).toLowerCase();
  final rest = camelCaseText.substring(1);
  return '$firstChar$rest';
}

decodeJSON(String rawJson) {
  return Convert.json.decode(rawJson);
}

WithWarning<Map> mergeObj(Map obj, Map other, String path) {
  List<Warning> warnings = new List<Warning>();
  final Map clone = Map.from(obj);
  other.forEach((k, v) {
    if (clone[k] == null) {
      clone[k] = v;
    } else {
      final String otherType = getTypeName(v);
      final String t = getTypeName(clone[k]);
      if (t != otherType) {
        if (t == 'int' && otherType == 'double') {
          // if double was found instead of int, assign the double
          clone[k] = v;
        } else if (clone[k].runtimeType != 'double' && v.runtimeType != 'int') {
          // if types are not equal, then
          warnings.add(newAmbiguousType('$path/$k'));
        }
      } else if (t == 'List') {
        List l = List.from(clone[k]);
        l.addAll(other[k]);
        final mergeableType = mergeableListType(l);
        if (ListType.Object == mergeableType.listType) {
          WithWarning<Map> mergedList = mergeObjectList(l, '$path');
          warnings.addAll(mergedList.warnings);
          clone[k] = List.filled(1, mergedList.result);
        } else {
          if (l.length > 0) {
            clone[k] = List.filled(1, l[0]);
          }
          if (mergeableType.isAmbigous) {
            warnings.add(newAmbiguousType('$path/$k'));
          }
        }
      } else if (t == 'Class') {
        WithWarning<Map> mergedObj = mergeObj(clone[k], other[k], '$path/$k');
        warnings.addAll(mergedObj.warnings);
        clone[k] = mergedObj.result;
      }
    }
  });
  return new WithWarning(clone, warnings);
}

WithWarning<Map> mergeObjectList(List<dynamic> list, String path,
    [int idx = -1]) {
  List<Warning> warnings = new List<Warning>();
  Map obj = new Map();
  for (var i = 0; i < list.length; i++) {
    final toMerge = list[i];
    if (toMerge is Map) {
      toMerge.forEach((k, v) {
        final String t = getTypeName(obj[k]);
        if (obj[k] == null) {
          obj[k] = v;
        } else {
          final String otherType = getTypeName(v);
          if (t != otherType) {
            if (t == 'int' && otherType == 'double') {
              // if double was found instead of int, assign the double
              obj[k] = v;
            } else if (t != 'double' && otherType != 'int') {
              // if types are not equal, then
              int realIndex = i;
              if (idx != -1) {
                realIndex = idx - i;
              }
              final String ambiguosTypePath = '$path[$realIndex]/$k';
              warnings.add(newAmbiguousType(ambiguosTypePath));
            }
          } else if (t == 'List') {
            List l = List.from(obj[k]);
            final int beginIndex = l.length;
            l.addAll(v);
            // bug is here
            final mergeableType = mergeableListType(l);
            if (ListType.Object == mergeableType.listType) {
              WithWarning<Map> mergedList =
                  mergeObjectList(l, '$path[$i]/$k', beginIndex);
              warnings.addAll(mergedList.warnings);
              obj[k] = List.filled(1, mergedList.result);
            } else {
              if (l.length > 0) {
                obj[k] = List.filled(1, l[0]);
              }
              if (mergeableType.isAmbigous) {
                warnings.add(newAmbiguousType('$path[$i]/$k'));
              }
            }
          } else if (t == 'Class') {
            int properIndex = i;
            if (idx != -1) {
              properIndex = i - idx;
            }
            WithWarning<Map> mergedObj = mergeObj(
              obj[k],
              v,
              '$path[$properIndex]/$k',
            );
            warnings.addAll(mergedObj.warnings);
            obj[k] = mergedObj.result;
          }
        }
      });
    }
  }
  return new WithWarning(obj, warnings);
}

isPrimitiveType(String typeName) {
  final isPrimitive = PRIMITIVE_TYPES[typeName];
  if (isPrimitive == null) {
    return false;
  }
  return isPrimitive;
}

String fixFieldName(String name,
    {TypeDefinition typeDef, bool privateField = false}) {
  var properName = name;
  if (name.startsWith('_') || name.startsWith(new RegExp(r'[0-9]'))) {
    final firstCharType = typeDef.name.substring(0, 1).toLowerCase();
    properName = '$firstCharType$name';
  }
  final fieldName = camelCaseFirstLower(properName);
  if (privateField) {
    return '_$fieldName';
  }
  return fieldName;
}

String getTypeName(dynamic obj) {
  if (obj is String) {
    return 'String';
  } else if (obj is int) {
    return 'int';
  } else if (obj is double) {
    return 'double';
  } else if (obj is bool) {
    return 'bool';
  } else if (obj == null) {
    return 'Null';
  } else if (obj is List) {
    return 'List';
  } else {
    // assumed class
    return 'Class';
  }
}

Node navigateNode(Node astNode, String path) {
  Node node;
  if (astNode is ObjectNode) {
    final ObjectNode objectNode = astNode;
    final propertyNode = objectNode.children.firstWhere((final prop) {
      return prop.key.value == path;
    }, orElse: () {
      return null;
    });
    if (propertyNode != null) {
      node = propertyNode.value;
    }
  }
  if (astNode is ArrayNode) {
    final ArrayNode arrayNode = astNode;
    final index = int.tryParse(path) ?? null;
    if (index != null && arrayNode.children.length > index) {
      node = arrayNode.children[index];
    }
  }
  return node;
}

final _pattern = RegExp(r"([0-9]+)\.{0,1}([0-9]*)e(([-0-9]+))");

bool isASTLiteralDouble(Node astNode) {
  if (astNode != null && astNode is LiteralNode) {
    final LiteralNode literalNode = astNode;
    final containsPoint = literalNode.raw.contains('.');
    final containsExponent = literalNode.raw.contains('e');
    if (containsPoint || containsExponent) {
      var isDouble = containsPoint;
      if (containsExponent) {
        final matches = _pattern.firstMatch(literalNode.raw);
        if (matches != null) {
          final integer = matches[1];
          final comma = matches[2];
          final exponent = matches[3];
          isDouble = _isDoubleWithExponential(integer, comma, exponent);
        }
      }
      return isDouble;
    }
  }
  return false;
}

bool _isDoubleWithExponential(String integer, String comma, String exponent) {
  final integerNumber = int.tryParse(integer) ?? 0;
  final exponentNumber = int.tryParse(exponent) ?? 0;
  final commaNumber = int.tryParse(comma) ?? 0;
  if (exponentNumber != null) {
    if (exponentNumber == 0) {
      return commaNumber > 0;
    }
    if (exponentNumber > 0) {
      return exponentNumber < comma.length && commaNumber > 0;
    }
    return commaNumber > 0 ||
        ((integerNumber.toDouble() * pow(10, exponentNumber)).remainder(1) > 0);
  }
  return false;
}

const String emptyListWarn = "list is empty";
const String ambiguousListWarn = "list is ambiguous";
const String ambiguousTypeWarn = "type is ambiguous";

class Warning {
  final String warning;
  final String path;

  Warning(this.warning, this.path);
}

Warning newEmptyListWarn(String path) {
  return new Warning(emptyListWarn, path);
}

Warning newAmbiguousListWarn(String path) {
  return new Warning(ambiguousListWarn, path);
}

Warning newAmbiguousType(String path) {
  return new Warning(ambiguousTypeWarn, path);
}

class WithWarning<T> {
  final T result;
  final List<Warning> warnings;

  WithWarning(this.result, this.warnings);
}

class TypeDefinition {
  String name;
  String subtype;
  bool isAmbiguous = false;
  bool _isPrimitive = false;

  factory TypeDefinition.fromDynamic(dynamic obj, Node astNode) {
    bool isAmbiguous = false;
    final type = getTypeName(obj);
    if (type == 'List') {
      List<dynamic> list = obj;
      String elemType;
      if (list.length > 0) {
        elemType = getTypeName(list[0]);
        for (dynamic listVal in list) {
          if (elemType != getTypeName(listVal)) {
            isAmbiguous = true;
            break;
          }
        }
      } else {
        // when array is empty insert Null just to warn the user
        elemType = "Null";
      }
      return new TypeDefinition(type,
          astNode: astNode, subtype: elemType, isAmbiguous: isAmbiguous);
    }
    return new TypeDefinition(type, astNode: astNode, isAmbiguous: isAmbiguous);
  }

  TypeDefinition(this.name, {this.subtype, this.isAmbiguous, Node astNode}) {
    if (subtype == null) {
      _isPrimitive = isPrimitiveType(this.name);
      if (this.name == 'int' && isASTLiteralDouble(astNode)) {
        this.name = 'double';
      }
    } else {
      _isPrimitive = isPrimitiveType('$name<$subtype>');
    }
    if (isAmbiguous == null) {
      isAmbiguous = false;
    }
  }

  //bool operator ==(other) {
  bool operator(other) {
    if (other is TypeDefinition) {
      TypeDefinition otherTypeDef = other;
      return this.name == otherTypeDef.name &&
          this.subtype == otherTypeDef.subtype &&
          this.isAmbiguous == otherTypeDef.isAmbiguous &&
          this._isPrimitive == otherTypeDef._isPrimitive;
    }
    return false;
  }

  bool get isPrimitive => _isPrimitive;

  bool get isPrimitiveList => _isPrimitive && name == 'List';

  String _buildParseClass(String expression) {
    final properType = subtype != null ? subtype : name;
    return 'new $properType.fromJson($expression)';
  }

  String _buildToJsonClass(String expression) {
    return '$expression.toJson()';
  }

  String jsonParseExpression(String key, bool privateField) {
    final jsonKey = "json['$key']";
    final fieldKey =
        fixFieldName(key, typeDef: this, privateField: privateField);
    if (isPrimitive) {
      if (name == "List") {
        return "$fieldKey = json['$key'].cast<$subtype>();";
      }
      return "$fieldKey = json['$key'];";
    } else if (name == "List" && subtype == "DateTime") {
      return "$fieldKey = json['$key'].map((v) => DateTime.tryParse(v));";
    } else if (name == "DateTime") {
      return "$fieldKey = DateTime.tryParse(json['$key']);";
    } else if (name == 'List') {
      // list of class
      return "if (json['$key'] != null) {\n\t\t\t$fieldKey = new List<$subtype>();\n\t\t\tjson['$key'].forEach((v) { $fieldKey.add(new $subtype.fromJson(v)); });\n\t\t}";
    } else {
      // class
      return "$fieldKey = json['$key'] != null ? ${_buildParseClass(jsonKey)} : null;";
    }
  }

  String toJsonExpression(String key, bool privateField) {
    final fieldKey =
        fixFieldName(key, typeDef: this, privateField: privateField);
    final thisKey = 'this.$fieldKey';
    if (isPrimitive) {
      return "data['$key'] = $thisKey;";
    } else if (name == 'List') {
      // class list
      return """if ($thisKey != null) {
      data['$key'] = $thisKey.map((v) => ${_buildToJsonClass('v')}).toList();
    }""";
    } else {
      // class
      return """if ($thisKey != null) {
      data['$key'] = ${_buildToJsonClass(thisKey)};
    }""";
    }
  }
}

class Dependency {
  String name;
  final TypeDefinition typeDef;

  Dependency(this.name, this.typeDef);

  String get className => camelCase(name);
}

class ClassDefinition {
  final String _name;
  final bool _privateFields;
  final Map<String, TypeDefinition> fields = new Map<String, TypeDefinition>();

  String get name => _name;
  bool get privateFields => _privateFields;

  List<Dependency> get dependencies {
    final dependenciesList = new List<Dependency>();
    final keys = fields.keys;
    keys.forEach((k) {
      final f = fields[k];
      if (!f.isPrimitive) {
        dependenciesList.add(new Dependency(k, f));
      }
    });
    return dependenciesList;
  }

  ClassDefinition(this._name, [this._privateFields = false]);

  bool operator(other) {
    if (other is ClassDefinition) {
      ClassDefinition otherClassDef = other;
      return this.isSubsetOf(otherClassDef) && otherClassDef.isSubsetOf(this);
    }
    return false;
  }

  bool isSubsetOf(ClassDefinition other) {
    final List<String> keys = this.fields.keys.toList();
    final int len = keys.length;
    for (int i = 0; i < len; i++) {
      TypeDefinition otherTypeDef = other.fields[keys[i]];
      if (otherTypeDef != null) {
        TypeDefinition typeDef = this.fields[keys[i]];
        if (typeDef != otherTypeDef) {
          return false;
        }
      } else {
        return false;
      }
    }
    return true;
  }

  hasField(TypeDefinition otherField) {
    return fields.keys
            .firstWhere((k) => fields[k] == otherField, orElse: () => null) !=
        null;
  }

  addField(String name, TypeDefinition typeDef) {
    fields[name] = typeDef;
  }

  void _addTypeDef(TypeDefinition typeDef, StringBuffer sb) {
    sb.write('${typeDef.name}');
    if (typeDef.subtype != null) {
      sb.write('<${typeDef.subtype}>');
    }
  }

  String get _fieldList {
    return fields.keys.map((key) {
      final f = fields[key];
      final fieldName =
          fixFieldName(key, typeDef: f, privateField: privateFields);
      final sb = new StringBuffer();
      sb.write('\t');
      _addTypeDef(f, sb);
      sb.write(' $fieldName;');
      return sb.toString();
    }).join('\n');
  }

  String get _gettersSetters {
    return fields.keys.map((key) {
      final f = fields[key];
      final publicFieldName =
          fixFieldName(key, typeDef: f, privateField: false);
      final privateFieldName =
          fixFieldName(key, typeDef: f, privateField: true);
      final sb = new StringBuffer();
      sb.write('\t');
      _addTypeDef(f, sb);
      sb.write(
          ' get $publicFieldName => $privateFieldName;\n\tset $publicFieldName(');
      _addTypeDef(f, sb);
      sb.write(' $publicFieldName) => $privateFieldName = $publicFieldName;');
      return sb.toString();
    }).join('\n');
  }

  String get _defaultPrivateConstructor {
    final sb = new StringBuffer();
    sb.write('\t$name({');
    var i = 0;
    var len = fields.keys.length - 1;
    fields.keys.forEach((key) {
      final f = fields[key];
      final publicFieldName =
          fixFieldName(key, typeDef: f, privateField: false);
      _addTypeDef(f, sb);
      sb.write(' $publicFieldName');
      if (i != len) {
        sb.write(', ');
      }
      i++;
    });
    sb.write('}) {\n');
    fields.keys.forEach((key) {
      final f = fields[key];
      final publicFieldName =
          fixFieldName(key, typeDef: f, privateField: false);
      final privateFieldName =
          fixFieldName(key, typeDef: f, privateField: true);
      sb.write('this.$privateFieldName = $publicFieldName;\n');
    });
    sb.write('}');
    return sb.toString();
  }

  String get _defaultConstructor {
    final sb = new StringBuffer();
    sb.write('\t$name({');
    var i = 0;
    var len = fields.keys.length - 1;
    fields.keys.forEach((key) {
      final f = fields[key];
      final fieldName =
          fixFieldName(key, typeDef: f, privateField: privateFields);
      sb.write('this.$fieldName');
      if (i != len) {
        sb.write(', ');
      }
      i++;
    });
    sb.write('});');
    return sb.toString();
  }

  String get _jsonParseFunc {
    final sb = new StringBuffer();
    sb.write('\t$name');
    sb.write('.fromJson(Map<String, dynamic> json) {\n');
    fields.keys.forEach((k) {
      sb.write('\t\t${fields[k].jsonParseExpression(k, privateFields)}\n');
    });
    sb.write('\t}');
    return sb.toString();
  }

  String get _jsonGenFunc {
    final sb = new StringBuffer();
    sb.write(
        '\tMap<String, dynamic> toJson() {\n\t\tfinal Map<String, dynamic> data = new Map<String, dynamic>();\n');
    fields.keys.forEach((k) {
      sb.write('\t\t${fields[k].toJsonExpression(k, privateFields)}\n');
    });
    sb.write('\t\treturn data;\n');
    sb.write('\t}');
    return sb.toString();
  }

  String toString() {
    if (privateFields) {
      return 'class $name {\n$_fieldList\n\n$_defaultPrivateConstructor\n\n$_gettersSetters\n\n$_jsonParseFunc\n\n$_jsonGenFunc\n}\n';
    } else {
      return 'class $name {\n$_fieldList\n\n$_defaultConstructor\n\n$_jsonParseFunc\n\n$_jsonGenFunc\n}\n';
    }
  }
}

class DartCode extends WithWarning<String> {
  DartCode(String result, List<Warning> warnings) : super(result, warnings);

  String get code => this.result;
}

/// A Hint is a user type correction.
class Hint {
  final String path;
  final String type;

  Hint(this.path, this.type);
}

class ModelGenerator {
  final String _rootClassName;
  final bool _privateFields;
  List<ClassDefinition> allClasses = new List<ClassDefinition>();
  final Map<String, String> sameClassMapping = new HashMap<String, String>();
  List<Hint> hints;

  ModelGenerator(this._rootClassName, [this._privateFields = false, hints]) {
    if (hints != null) {
      this.hints = hints;
    } else {
      this.hints = new List<Hint>();
    }
  }

  Hint _hintForPath(String path) {
    return this.hints.firstWhere((h) => h.path == path, orElse: () => null);
  }

  List<Warning> _generateClassDefinition(
      String className, dynamic jsonRawDynamicData, String path, Node astNode) {
    List<Warning> warnings = new List<Warning>();
    if (jsonRawDynamicData is List) {
      // if first element is an array, start in the first element.
      final node = navigateNode(astNode, '0');
      _generateClassDefinition(className, jsonRawDynamicData[0], path, node);
    } else {
      final Map<dynamic, dynamic> jsonRawData = jsonRawDynamicData;
      final keys = jsonRawData.keys;
      ClassDefinition classDefinition =
          new ClassDefinition(className, _privateFields);
      keys.forEach((key) {
        TypeDefinition typeDef;
        final hint = _hintForPath('$path/$key');
        final node = navigateNode(astNode, key);
        if (hint != null) {
          typeDef = new TypeDefinition(hint.type, astNode: node);
        } else {
          typeDef = new TypeDefinition.fromDynamic(jsonRawData[key], node);
        }
        if (typeDef.name == 'Class') {
          typeDef.name = camelCase(key);
        }
        if (typeDef.name == 'List' && typeDef.subtype == 'Null') {
          warnings.add(newEmptyListWarn('$path/$key'));
        }
        if (typeDef.subtype != null && typeDef.subtype == 'Class') {
          typeDef.subtype = camelCase(key);
        }
        if (typeDef.isAmbiguous) {
          warnings.add(newAmbiguousListWarn('$path/$key'));
        }
        classDefinition.addField(key, typeDef);
      });
      final similarClass = allClasses.firstWhere((cd) => cd == classDefinition,
          orElse: () => null);
      if (similarClass != null) {
        final similarClassName = similarClass.name;
        final currentClassName = classDefinition.name;
        sameClassMapping[currentClassName] = similarClassName;
      } else {
        allClasses.add(classDefinition);
      }
      final dependencies = classDefinition.dependencies;
      dependencies.forEach((dependency) {
        List<Warning> warns;
        if (dependency.typeDef.name == 'List') {
          // only generate dependency class if the array is not empty
          if (jsonRawData[dependency.name].length > 0) {
            // when list has ambiguous values, take the first one, otherwise merge all objects
            // into a single one
            dynamic toAnalyze;
            if (!dependency.typeDef.isAmbiguous) {
              WithWarning<Map> mergeWithWarning = mergeObjectList(
                  jsonRawData[dependency.name], '$path/${dependency.name}');
              toAnalyze = mergeWithWarning.result;
              warnings.addAll(mergeWithWarning.warnings);
            } else {
              toAnalyze = jsonRawData[dependency.name][0];
            }
            final node = navigateNode(astNode, dependency.name);
            warns = _generateClassDefinition(dependency.className, toAnalyze,
                '$path/${dependency.name}', node);
          }
        } else {
          final node = navigateNode(astNode, dependency.name);
          warns = _generateClassDefinition(dependency.className,
              jsonRawData[dependency.name], '$path/${dependency.name}', node);
        }
        if (warns != null) {
          warnings.addAll(warns);
        }
      });
    }
    return warnings;
  }

  /// generateUnsafeDart will generate all classes and append one after another
  /// in a single string. The [rawJson] param is assumed to be a properly
  /// formatted JSON string. The dart code is not validated so invalid dart code
  /// might be returned
  DartCode generateUnsafeDart(String rawJson) {
    final jsonRawData = decodeJSON(rawJson);
    final astNode = parse(rawJson, Settings());
    List<Warning> warnings =
        _generateClassDefinition(_rootClassName, jsonRawData, "", astNode);
    // after generating all classes, replace the omited similar classes.
    allClasses.forEach((c) {
      final fieldsKeys = c.fields.keys;
      fieldsKeys.forEach((f) {
        final typeForField = c.fields[f];
        if (sameClassMapping.containsKey(typeForField.name)) {
          c.fields[f].name = sameClassMapping[typeForField.name];
        }
      });
    });
    return new DartCode(
        allClasses.map((c) => c.toString()).join('\n'), warnings);
  }

  /// generateDartClasses will generate all classes and append one after another
  /// in a single string. The [rawJson] param is assumed to be a properly
  /// formatted JSON string. If the generated dart is invalid it will throw an error.
  DartCode generateDartClasses(String rawJson) {
    final unsafeDartCode = generateUnsafeDart(rawJson);
    final formatter = new DartFormatter();
    return new DartCode(
        formatter.format(unsafeDartCode.code), unsafeDartCode.warnings);
  }
}
