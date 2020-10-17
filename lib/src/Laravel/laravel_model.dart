import '../../laravel.dart';

String laravelModel(
    String tableName, List<String> fillable, List<String> hidden) {
  String text = """<?php

namespace App;

use Illuminate\\Database\\Eloquent\\Model;

class ${tableName[0].toUpperCase()}${tableName.substring(1)} extends Model
{
    //
    protected \$table = '$tableName';
    protected \$fillable = $fillable;
    protected \$hidden = $hidden;
}
""";
  return text;
}

List<String> makeModel({List<String> list}) {
  List<String> model = List();
  list.forEach((element) {
    var data = xBetweenText(element, "'", "'");
    model.add("'$data'");
  });
  return model;
}
