import 'package:material_x/laravel.dart';

void main() {
  f();
}

void f() {
  var o = [
    'zeeshan'.toStoreVariable(variablename: 'name'),
    'zeeshan'.toStoreVariable(variablename: 'names'),
    Condition('name'.toVariable(), '==', 'names'.toVariable(),
            falseValue: 'false'.toBoolReturn(),
            trueValue: 'true'.toBoolReturn())
        .check()
  ].toFuntions('ok', request: true);

  print(o);
}
