import 'package:material_x/MxServices.dart';

List stlessName = ['profile', 'homePage', 'setting']; // create array page name
List stfullName = ['profile', 'homePage', 'setting'];
main() {
  stlessName.forEach((f) {
    xStless(f + 'Stless', 'lib/x'); // that is state less
  });
  stfullName.forEach((f) {
    xStfull(f + 'Stfull', 'lib/x'); // that is stateful
  });
  print("done");
}
