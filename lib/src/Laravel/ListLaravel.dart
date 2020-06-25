extension ListLaravel on List {
  String dblist() {
    var db = '';
    forEach((element) {
      db = db + element + '\n';
    });
    return db;
  }
}
