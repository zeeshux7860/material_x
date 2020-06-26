import 'package:material_x/laravel.dart';

void main() {
  var ok = LaravelGetData(tableName: "ok")
      .where('id', '>', 'user_id'.toVariable())
      .where('id', '>', 'user_id'.toVariable())
      .paginate()
      .laravelDone();
  print(ok.toStoreVariable(variablename: "ok"));
}

void f() {
  var o = [
    "zeeshan".toStoreVariable(variablename: "name"),
    "zeeshan".toStoreVariable(variablename: "names"),
    Condition('name'.toVariable(), '==', 'names'.toVariable(),
            falseValue: "false".toBoolReturn(),
            trueValue: "true".toBoolReturn())
        .check()
  ].toFuntions("ok", request: true);

  print(o);
}
