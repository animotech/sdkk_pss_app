import 'package:get_it/get_it.dart';

import 'config/config.dart';
import 'config/dev/config_impl.dart' as dev;
import 'config/prd/config_impl.dart' as prd;
import 'config/stg/config_impl.dart' as stg;
import 'core/constants/flavor.dart';
import 'core/network/api_client.dart';
import 'data/service_impl/parking_service_impl.dart';
import 'domain/services/parking_service.dart';

setupDI(Flavor flavor) {
  switch (flavor) {
    case Flavor.DEV:
      _register<Config>(dev.ConfigImpl());
      break;
    case Flavor.STG:
      _register<Config>(stg.ConfigImpl());
      break;
    case Flavor.PRD:
      _register<Config>(prd.ConfigImpl());
      break;
  }

  _register<ParkingService>(ParkingDatasourceImpl());
  _register<ApiClient>(ApiClient());

  // GetIt.I.registerSingleton<ParkingService>(ParkingDatasourceImpl());
  // GetIt.I.registerSingleton<ApiClient>(ApiClient());
}

T getIt<T extends Object>() {
  return GetIt.I.get<T>();
}

_register<T extends Object>(T instance) {
  GetIt.I.registerSingleton<T>(instance);
}
