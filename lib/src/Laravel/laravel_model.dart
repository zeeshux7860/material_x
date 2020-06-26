import '../../laravel.dart';

String laravelModel(String dbname, List<String> fillable, List<String> hidden) {
  String text = """<?php

namespace App;

use Illuminate\\Database\\Eloquent\\Model;

class ${dbname[0].toUpperCase()}${dbname.substring(1)} extends Model
{
    //
    protected \$table = '$dbname';
    protected \$fillable = $fillable;
    protected \$hidden = $hidden;
}
""";
  return text;
}

List<String> makeModel({List<String> list}) {
  List<String> model = List();
  list.forEach((element) {
    var data = mxBetweenText(element, "'", "'");
    model.add("'$data'");
  });
  return model;
}
