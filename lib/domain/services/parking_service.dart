import 'package:sdk_pss_app/domain/models/parking.dart';

abstract class ParkingService {
  Future<Parking?> fetchParking(String uuid);
}
