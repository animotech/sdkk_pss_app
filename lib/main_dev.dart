import 'package:sdk_pss_app/core/constants/flavor.dart';

import 'di.dart';
import 'run_app.dart';

void main() {
  setupDI(Flavor.DEV);
  setupApp();
}
