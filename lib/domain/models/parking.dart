// main.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking.freezed.dart';

part 'parking.g.dart';

@freezed
class Parking with _$Parking {
  const factory Parking({
    @JsonKey(name: 'devices_id') @Default(0) int devicesId,
    @JsonKey(name: 'facility_ic') @Default("") String facilityIc,
    @JsonKey(name: 'parking_name') @Default("") String parkingName,
    @JsonKey(name: 'address') @Default("") String address,
    @JsonKey(name: 'tel') @Default("") String tel,
    @JsonKey(name: 'note') @Default("") String note,
    @JsonKey(name: 'price_information') @Default("") String priceInformation,
    @JsonKey(name: 'started_at') @Default("") String startedAt,
    @JsonKey(name: 'parked_area') @Default("") String parkedArea,
    @JsonKey(name: 'walking_status') @Default(0) int walkingStatus,
    @JsonKey(name: 'exit_status') @Default(0) int exitStatus,
    @JsonKey(name: 'last_updated_at') @Default("") String lastUpdated_at,
  }) = _Parking;

  factory Parking.fromJson(Map<String, dynamic> json) =>
      _$ParkingFromJson(json);
}
