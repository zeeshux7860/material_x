import 'package:material_x/laravel.dart';

void main() {
  // LaravelTableController();
  // var ok = LaravelGetData(tableName: "ok")
  //     .where('id', '>', 'user_id'.toVariable())
  //     .where('id', '>', 'user_id'.toVariable())
  //     .paginate()
  //     .close();
  // print(ok.toStoreVariable(variablename: "ok"));
  var ok = laravelArray(["a", "b", "c"]);

  var o = LaravelSaveData(tablename: 'ok').create(ok).close();
  print(o);
}

void f() {
  var o = [
    "zeeshan".toStoreVariable(variablename: "name"),
    "zeeshan".toStoreVariable(variablename: "names"),
    Condition(
            falseValue: "false".toBoolReturn(),
            trueValue: "true".toBoolReturn())
        .check('name'.toVariable(), '==', 'names'.toVariable())
  ].toFuntions("ok", request: true);

  print(o);
}
