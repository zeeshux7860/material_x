class LaravelGetData {
  final String tableName;

  LaravelGetData({this.tableName});
  String getData() {
    return "${tableName.firstCapitalize()}" + '::get()';
  }

  String where(String filed, String operators, String value) {
    var op = operators == '' ? '' : "'$operators'" + ',';
    return "${tableName.firstCapitalize()}" + '::where($filed,$op$value)';
  }

  String getDataPaginate({final int value = 5}) {
    return "${tableName.firstCapitalize()}" + '::paginate($value)';
  }

  String whereExists(String filed, String operators, dynamic value) {
    var op = operators == '' ? '' : "'$operators'" + ',';
    return "${tableName.firstCapitalize()}" +
        '::where($filed,$op$value)->exists()';
  }
}

extension StringExtensionsa on String {
  String firstCapitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String close() {
    return this + ';';
  }

  String where(String filed, String operators, String value) {
    var op = operators == '' ? '' : "'$operators'" + ',';
    return '$this->where($filed,$op$value)';
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

  String limit({final int value = 5}) {
    return "$this->limit($value)";
  }

  String first({final int value = 5}) {
    return "$this->first()";
  }

  String find({final int value = 1}) {
    return "$this->find($value)";
  }

  String orderBy() {
    return "$this->orderBy()";
  }

  String save() {
    return "$this->save()";
  }
}

String laravelArray(List list) {
  //print(list.toString().substring(0, list.toString().length - list.toString().length + 1));

  var array = list.toString().replaceAll('[', '').replaceAll(']', '');
  return "$array";
}

String laravelGetRequestKeyValue(requestKey) {
  return "\$request->$requestKey";
}

String laravelSaveValue(keyName, value) {
  return "'$keyName' => $value";
}

class LaravelSaveData {
  final String tablename;

  LaravelSaveData({this.tablename});

  String save() {
    return tablename + '::' + "save()";
  }

  String create(String array) {
    return tablename + '::' + "create($array)";
  }
}

String response200(dynamic data) {
  return "return response()->json(['response_code' => 200, $data], 200)";
}

String response401(dynamic data) {
  return "return response()->json(['response_code' => 401, $data], 401)";
}

String response404(dynamic data) {
  return "return response()->json(['response_code' => 404, $data], 404)";
}
