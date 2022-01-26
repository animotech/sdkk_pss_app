// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Parking _$$_ParkingFromJson(Map<String, dynamic> json) => _$_Parking(
      devicesId: json['devices_id'] as int? ?? 0,
      facilityIc: json['facility_ic'] as String? ?? "",
      parkingName: json['parking_name'] as String? ?? "",
      address: json['address'] as String? ?? "",
      tel: json['tel'] as String? ?? "",
      note: json['note'] as String? ?? "",
      priceInformation: json['price_information'] as String? ?? "",
      startedAt: json['started_at'] as String? ?? "",
      parkedArea: json['parked_area'] as String? ?? "",
      walkingStatus: json['walking_status'] as int? ?? 0,
      exitStatus: json['exit_status'] as int? ?? 0,
      lastUpdated_at: json['last_updated_at'] as String? ?? "",
    );

Map<String, dynamic> _$$_ParkingToJson(_$_Parking instance) =>
    <String, dynamic>{
      'devices_id': instance.devicesId,
      'facility_ic': instance.facilityIc,
      'parking_name': instance.parkingName,
      'address': instance.address,
      'tel': instance.tel,
      'note': instance.note,
      'price_information': instance.priceInformation,
      'started_at': instance.startedAt,
      'parked_area': instance.parkedArea,
      'walking_status': instance.walkingStatus,
      'exit_status': instance.exitStatus,
      'last_updated_at': instance.lastUpdated_at,
    };
