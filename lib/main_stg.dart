import 'core/constants/flavor.dart';
import 'di.dart';
import 'run_app.dart';

void main() {
  setupDI(Flavor.STG);
  setupApp();
}
