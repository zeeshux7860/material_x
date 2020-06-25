extension LaravelFunction on List {
  String toFuntions(String functionName, {final bool request = false}) {
    var val = '';
    forEach((element) {
      val = val + element;
    });
    var requests = request ? 'Request \$request' : '';
    var text = ''' public function $functionName($requests){\n $val}''';
    return text;
  }
}

extension LaravelValidation on List {
  String toValidator({String request}) {
    var text = '''Validator::make($request, $this)''';
    return text;
  }
}

extension LaravelString on String {
  String toRequired() {
    return "'$this' => 'required'";
  }

  String toVariable() {
    return '\$$this';
  }

  String toStringReturn() {
    return "echo '$this';";
  }

  String toStrings() {
    return "'$this'";
  }

  String toIntegerReturn() {
    return 'echo $this;';
  }

  String toBoolReturn() {
    return 'echo ' + this + ';';
  }

  String toStoreVariable({variablename}) {
    var text = "\$$variablename = '$this';";
    return text;
  }

  /// Default error code is 401
  /// Default variable name is $validator
  String toValidate({String customMessage}) {
    var text = """\$validator = $this;
    
     if (\$validator->fails()) {
            return response()->json(['response_code' => 401, 'error' => \$validator->errors(), $customMessage], 401);
        } """;
    return text;
  }
}

String requestall() {
  return '\$request->all()';
}

// class Laravel {
//   String data = "";
//   Laravel(String engine) {
//     data = engine;
//   }
// }

class Condition {
  final condition1;
  final operator;
  final condition2;
  final String trueValue;
  final String falseValue;

  Condition(this.condition1, this.operator, this.condition2,
      {this.trueValue, this.falseValue});

  String check() {
    var text = '''if($condition1 $operator $condition2){
      $trueValue
    }else{
      $falseValue
    }''';
    return text;
  }
}
