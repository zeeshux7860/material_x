import '../../laravel.dart';

class LaravelCreateRestApi {
  final String path;
  final String tableName;
  final String table;
  final String model;
  final String controller;

  LaravelCreateRestApi(
      {this.path, this.tableName, this.table, this.model, this.controller});

  String create() {
    createFile(path + '/database/migrations', table,
        '2020_05_17_101229_' + tableName.toLowerCase() + '.php');
    createFile(path + '/app', model,
        '${tableName[0].toUpperCase()}${tableName.substring(1)}' + '.php');
    createFile(
        path + '/app/Http/Controllers/API',
        controller,
        '${tableName[0].toUpperCase()}${tableName.substring(1)}' +
            'Controller.php');
    return "LaravelCreateRestApi done";
  }
}
