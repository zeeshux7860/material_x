extension ListLaravel on List {
  dblist() {
    var db = '';
    this.forEach((element) {
      db = db + element + '\n';
    });
    return db;
  }
}
