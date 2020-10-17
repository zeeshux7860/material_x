import 'package:material_x/material_x.dart';

// var path = 'C:/Users/zeeshux/Desktop/shell/projects';
// void main() {
//   //laravelDone(path: path, projectName: "projects");
//   dbMessage();
// }

// void dbMessage() {
//   String tableName = 'fb';

//   var tableStructure = laravelTableCreate(tableName, [
//     'email'.toLongText(),
//     'password'.toLongText(),
//     'status'.toInteger(),
//     'date'.toDate(),
//     'token'.toLongText()
//   ]);

//   String model = laravelModel(tableName, <String>[
//     'email',
//     'password',
//     'status',
//     'date',
//   ], <String>[
//     'token'
//   ]);

//   String validation = [
//     "name".toRequired(),
//     "email".toRequired(),
//   ].toValidator(request: requestall());

//   var controller = [
//     validation.toValidate(),
//     "'zeeshan'".toStoreVariable("wow"),
//     Condition("wow".toVariable(), '==', "Zeeshan".toStrings(),
//             falseValue: "false".toBoolReturn(),
//             trueValue: "true".toBoolReturn())
//         .check()
//   ].toFuntions("createAccount", request: true);

//   LaravelCreateRestApi(
//           path: path,
//           tableName: tableName,
//           controller: dbController(tableName, controller),
//           model: model,
//           table: tableStructure)
//       .create();
//   // File('C:/xampp/htdocs/api/database/migrations/2020_05_17_101229_' +
//   //         tableName.toLowerCase() +
//   //         '.php')
//   //     .writeAsStringSync(db);
// }

// Abstract base class

// Subclass of Vehicle, the abstract baseclass

// extension Laravelpaginations on LaravelTableGet {
//   Laravelpagination laravelPagination() {
//     new Laravelpagination("ok");
//   }
// }
// S ok = "";
class OK extends StatefulWidget {
  @override
  _OKState createState() => _OKState();
}

class _OKState extends State<OK> {
  @override
  Widget build(BuildContext context) {
    return XContainer(
      padding: EdgeInsets.zero,
    );
  }
}
