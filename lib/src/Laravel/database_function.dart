class LaravelGetData {
  final String tableName;

  LaravelGetData({this.tableName});
  String getData() {
    return "${tableName.firstCapitalize()}" + '::get()';
  }

  String where(String filed, String operators, String value) {
    var fil = "'$filed'";
    var op = operators == '' ? '' : "'$operators'" + ',';
    return "${tableName.firstCapitalize()}" + '::where($fil,$op$value)';
  }

  String getDataPaginate({final int value = 5}) {
    return "${tableName.firstCapitalize()}" + '::paginate($value)';
  }

  String whereExists(String filed, String operators, String value) {
    var fil = "'$filed'";
    var op = operators == '' ? '' : "'$operators'" + ',';
    return "${tableName.firstCapitalize()}" +
        '::where($fil,$op$value)->exists()';
  }
}

extension StringExtensionsa on String {
  String firstCapitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String laravelDone() {
    return this + ';';
  }

  String where(String filed, String operators, String value) {
    var fil = "'$filed'";
    var op = operators == '' ? '' : "'$operators'" + ',';
    return '$this->where($fil,$op$value)';
  }

  String exists() {
    return '$this->exists()';
  }

  String gets() {
    return '$this->get()';
  }

  String paginate({final int value = 5}) {
    return "$this->paginate($value)";
  }
}
