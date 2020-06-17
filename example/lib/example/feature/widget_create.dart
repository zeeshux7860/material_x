import 'package:material_x/MxServices.dart';

List stlessName = ['profile', 'homePage', 'setting']; // create array page name
List stfullName = ['profile', 'homePage', 'setting'];
main() {
  stlessName.forEach((f) {
    mxStless(f + 'Stless', 'lib/MX'); // that is state less
  });
  stfullName.forEach((f) {
    mxStfull(f + 'Stfull', 'lib/MX'); // that is stateful
  });
  print("done");
}
