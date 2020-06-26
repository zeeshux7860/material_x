import 'dart:io';

fileCreate(String path, String content, String fileNameWithExtension) {
  new Directory(path).createSync(recursive: true);
  File(path + '/' + fileNameWithExtension).writeAsStringSync(content);
}
