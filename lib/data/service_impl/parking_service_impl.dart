import 'package:get_it/get_it.dart';
import 'package:sdk_pss_app/config/config.dart';
import 'package:sdk_pss_app/core/network/api_client.dart';
import 'package:sdk_pss_app/domain/models/parking.dart';
import 'package:sdk_pss_app/domain/services/parking_service.dart';

import '../../di.dart';

class ParkingDatasourceImpl implements ParkingService {
  @override
  Future<Parking?> fetchParking(String uuid) async {
    var url = "${getIt<Config>().API_HOST}/devices/${uuid}";
    var res = await GetIt.I<ApiClient>().get(url);
    if (res.isSuccess()) {
      return Parking.fromJson(res.data);
    } else {
      return null;
    }
  }
}
