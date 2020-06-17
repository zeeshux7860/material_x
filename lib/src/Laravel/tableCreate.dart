import './database_structure.dart';
import './ListLaravel.dart';

String laravelTableCreate(String tableName, List tableColumn) {
  var tableList = tableColumn.dblist();
  var table = dbStructure(tableName, tableList);
  return table;
}
