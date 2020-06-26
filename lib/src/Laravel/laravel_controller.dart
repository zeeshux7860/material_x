class LaravelTableController {
  final String tableName;
  final String functionCreate;
  LaravelTableController({this.tableName, this.functionCreate});

  String create({List<String> importModel}) {
    String model = "";
    importModel.forEach((element) {
      model = model + 'use App\\' + element + ';\n';
    });
    String text = """<?php

namespace App\\Http\\Controllers\\Api;
$model
use App\\Http\\Controllers\\Controller;
use App\\User;
use Illuminate\\Support\\Facades\\Validator;
use Illuminate\\Http\\Request;

class ${tableName[0].toUpperCase()}${tableName.substring(1)}Controller extends Controller
{
   $functionCreate
}
""";
    return text;
  }
}
