import 'dart:convert';
import 'dart:io';
import 'package:console_cmd/console_cmd.dart';
import 'package:process_run/shell.dart';

import '../../laravel.dart';

var shell = Shell();

var context = "";

laravelStarts({String path, String projectName}) async {
  print("Laravel start downloading.....");

  await shell
      .cd(path)
      .run(
          'git clone https://github.com/zeeshux7860/laravel_material_x.git $projectName')
      .then((value) async {
    print("Laravel download done.............");
    print(
        "--------------------------------------------------------------------------------");
    ANSIPrinter().printRGB("""
DB_CONNECTION=mysql
DB_HOST=127.0.0.1 //Enter your host 
DB_PORT=3306 
DB_DATABASE=laravel //Enter your database name
DB_USERNAME=root  //Enter your username name
DB_PASSWORD= //if your database password then enter here\nNow setup your database configration""",
        breakLine: true, fColor: 0xFFff6700);
    print(
        "--------------------------------------------------------------------------------");

    createFile(path + '/$projectName', context, '.env');
    File file = new File(path + '/$projectName/' + '.env');
    var ok = File(path + '\\$projectName\\.env.example').openRead();
    ok
        .transform(utf8.decoder) // Decode bytes to UTF-8.
        .transform(new LineSplitter()) // Convert stream to individual lines.
        .listen((String line) async {
      await file.writeAsString(line + '\n', mode: FileMode.append);
      // context = context + line + '\n';
    });
    print(
        "Go to here  $path + '/$projectName' .env\nSetup database configration");
    ANSIPrinter().printRGB("Now Start your localhost server and mysql server ",
        breakLine: true, bGray: 1.0, fColor: 0xFFff6700);
    ANSIPrinter().printRGB("then call function laravelDone()",
        breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
  }).catchError((onError) {
    ANSIPrinter()
        .printRGB(" Already download ", breakLine: true, fColor: 0xFF0000);
  });
}

laravelDone({String path, String projectName}) async {
  ANSIPrinter().printRGB("Laravel start installing dependency",
      bGray: 1.0, fColor: 0xff4BB543);
  await shell.cd(path + '/$projectName').run('composer update').then((a) {
    shell.cd(path + '/$projectName').run('''php artisan migrate ''').then((a) {
      shell
          .cd(path + '/$projectName')
          .run('php artisan passport:install')
          .then((a) {
        ANSIPrinter().printRGB("Now Every thing is done :) Great ",
            breakLine: true, bGray: 1.0, fColor: 0xff4BB543);
      });
    });
  });
}
