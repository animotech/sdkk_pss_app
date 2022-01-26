// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parking _$ParkingFromJson(Map<String, dynamic> json) {
  return _Parking.fromJson(json);
}

/// @nodoc
class _$ParkingTearOff {
  const _$ParkingTearOff();

  _Parking call(
      {@JsonKey(name: 'devices_id') int devicesId = 0,
      @JsonKey(name: 'facility_ic') String facilityIc = "",
      @JsonKey(name: 'parking_name') String parkingName = "",
      @JsonKey(name: 'address') String address = "",
      @JsonKey(name: 'tel') String tel = "",
      @JsonKey(name: 'note') String note = "",
      @JsonKey(name: 'price_information') String priceInformation = "",
      @JsonKey(name: 'started_at') String startedAt = "",
      @JsonKey(name: 'parked_area') String parkedArea = "",
      @JsonKey(name: 'walking_status') int walkingStatus = 0,
      @JsonKey(name: 'exit_status') int exitStatus = 0,
      @JsonKey(name: 'last_updated_at') String lastUpdated_at = ""}) {
    return _Parking(
      devicesId: devicesId,
      facilityIc: facilityIc,
      parkingName: parkingName,
      address: address,
      tel: tel,
      note: note,
      priceInformation: priceInformation,
      startedAt: startedAt,
      parkedArea: parkedArea,
      walkingStatus: walkingStatus,
      exitStatus: exitStatus,
      lastUpdated_at: lastUpdated_at,
    );
  }

  Parking fromJson(Map<String, Object?> json) {
    return Parking.fromJson(json);
  }
}

/// @nodoc
const $Parking = _$ParkingTearOff();

/// @nodoc
mixin _$Parking {
  @JsonKey(name: 'devices_id')
  int get devicesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facility_ic')
  String get facilityIc => throw _privateConstructorUsedError;
  @JsonKey(name: 'parking_name')
  String get parkingName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'tel')
  String get tel => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_information')
  String get priceInformation => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  String get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parked_area')
  String get parkedArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'walking_status')
  int get walkingStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'exit_status')
  int get exitStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_at')
  String get lastUpdated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParkingCopyWith<Parking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParkingCopyWith<$Res> {
  factory $ParkingCopyWith(Parking value, $Res Function(Parking) then) =
      _$ParkingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'devices_id') int devicesId,
      @JsonKey(name: 'facility_ic') String facilityIc,
      @JsonKey(name: 'parking_name') String parkingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'note') String note,
      @JsonKey(name: 'price_information') String priceInformation,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'parked_area') String parkedArea,
      @JsonKey(name: 'walking_status') int walkingStatus,
      @JsonKey(name: 'exit_status') int exitStatus,
      @JsonKey(name: 'last_updated_at') String lastUpdated_at});
}

/// @nodoc
class _$ParkingCopyWithImpl<$Res> implements $ParkingCopyWith<$Res> {
  _$ParkingCopyWithImpl(this._value, this._then);

  final Parking _value;
  // ignore: unused_field
  final $Res Function(Parking) _then;

  @override
  $Res call({
    Object? devicesId = freezed,
    Object? facilityIc = freezed,
    Object? parkingName = freezed,
    Object? address = freezed,
    Object? tel = freezed,
    Object? note = freezed,
    Object? priceInformation = freezed,
    Object? startedAt = freezed,
    Object? parkedArea = freezed,
    Object? walkingStatus = freezed,
    Object? exitStatus = freezed,
    Object? lastUpdated_at = freezed,
  }) {
    return _then(_value.copyWith(
      devicesId: devicesId == freezed
          ? _value.devicesId
          : devicesId // ignore: cast_nullable_to_non_nullable
              as int,
      facilityIc: facilityIc == freezed
          ? _value.facilityIc
          : facilityIc // ignore: cast_nullable_to_non_nullable
              as String,
      parkingName: parkingName == freezed
          ? _value.parkingName
          : parkingName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      priceInformation: priceInformation == freezed
          ? _value.priceInformation
          : priceInformation // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      parkedArea: parkedArea == freezed
          ? _value.parkedArea
          : parkedArea // ignore: cast_nullable_to_non_nullable
              as String,
      walkingStatus: walkingStatus == freezed
          ? _value.walkingStatus
          : walkingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      exitStatus: exitStatus == freezed
          ? _value.exitStatus
          : exitStatus // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated_at: lastUpdated_at == freezed
          ? _value.lastUpdated_at
          : lastUpdated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ParkingCopyWith<$Res> implements $ParkingCopyWith<$Res> {
  factory _$ParkingCopyWith(_Parking value, $Res Function(_Parking) then) =
      __$ParkingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'devices_id') int devicesId,
      @JsonKey(name: 'facility_ic') String facilityIc,
      @JsonKey(name: 'parking_name') String parkingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'note') String note,
      @JsonKey(name: 'price_information') String priceInformation,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'parked_area') String parkedArea,
      @JsonKey(name: 'walking_status') int walkingStatus,
      @JsonKey(name: 'exit_status') int exitStatus,
      @JsonKey(name: 'last_updated_at') String lastUpdated_at});
}

/// @nodoc
class __$ParkingCopyWithImpl<$Res> extends _$ParkingCopyWithImpl<$Res>
    implements _$ParkingCopyWith<$Res> {
  __$ParkingCopyWithImpl(_Parking _value, $Res Function(_Parking) _then)
      : super(_value, (v) => _then(v as _Parking));

  @override
  _Parking get _value => super._value as _Parking;

  @override
  $Res call({
    Object? devicesId = freezed,
    Object? facilityIc = freezed,
    Object? parkingName = freezed,
    Object? address = freezed,
    Object? tel = freezed,
    Object? note = freezed,
    Object? priceInformation = freezed,
    Object? startedAt = freezed,
    Object? parkedArea = freezed,
    Object? walkingStatus = freezed,
    Object? exitStatus = freezed,
    Object? lastUpdated_at = freezed,
  }) {
    return _then(_Parking(
      devicesId: devicesId == freezed
          ? _value.devicesId
          : devicesId // ignore: cast_nullable_to_non_nullable
              as int,
      facilityIc: facilityIc == freezed
          ? _value.facilityIc
          : facilityIc // ignore: cast_nullable_to_non_nullable
              as String,
      parkingName: parkingName == freezed
          ? _value.parkingName
          : parkingName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      priceInformation: priceInformation == freezed
          ? _value.priceInformation
          : priceInformation // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      parkedArea: parkedArea == freezed
          ? _value.parkedArea
          : parkedArea // ignore: cast_nullable_to_non_nullable
              as String,
      walkingStatus: walkingStatus == freezed
          ? _value.walkingStatus
          : walkingStatus // ignore: cast_nullable_to_non_nullable
              as int,
      exitStatus: exitStatus == freezed
          ? _value.exitStatus
          : exitStatus // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated_at: lastUpdated_at == freezed
          ? _value.lastUpdated_at
          : lastUpdated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parking implements _Parking {
  const _$_Parking(
      {@JsonKey(name: 'devices_id') this.devicesId = 0,
      @JsonKey(name: 'facility_ic') this.facilityIc = "",
      @JsonKey(name: 'parking_name') this.parkingName = "",
      @JsonKey(name: 'address') this.address = "",
      @JsonKey(name: 'tel') this.tel = "",
      @JsonKey(name: 'note') this.note = "",
      @JsonKey(name: 'price_information') this.priceInformation = "",
      @JsonKey(name: 'started_at') this.startedAt = "",
      @JsonKey(name: 'parked_area') this.parkedArea = "",
      @JsonKey(name: 'walking_status') this.walkingStatus = 0,
      @JsonKey(name: 'exit_status') this.exitStatus = 0,
      @JsonKey(name: 'last_updated_at') this.lastUpdated_at = ""});

  factory _$_Parking.fromJson(Map<String, dynamic> json) =>
      _$$_ParkingFromJson(json);

  @override
  @JsonKey(name: 'devices_id')
  final int devicesId;
  @override
  @JsonKey(name: 'facility_ic')
  final String facilityIc;
  @override
  @JsonKey(name: 'parking_name')
  final String parkingName;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'tel')
  final String tel;
  @override
  @JsonKey(name: 'note')
  final String note;
  @override
  @JsonKey(name: 'price_information')
  final String priceInformation;
  @override
  @JsonKey(name: 'started_at')
  final String startedAt;
  @override
  @JsonKey(name: 'parked_area')
  final String parkedArea;
  @override
  @JsonKey(name: 'walking_status')
  final int walkingStatus;
  @override
  @JsonKey(name: 'exit_status')
  final int exitStatus;
  @override
  @JsonKey(name: 'last_updated_at')
  final String lastUpdated_at;

  @override
  String toString() {
    return 'Parking(devicesId: $devicesId, facilityIc: $facilityIc, parkingName: $parkingName, address: $address, tel: $tel, note: $note, priceInformation: $priceInformation, startedAt: $startedAt, parkedArea: $parkedArea, walkingStatus: $walkingStatus, exitStatus: $exitStatus, lastUpdated_at: $lastUpdated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Parking &&
            const DeepCollectionEquality().equals(other.devicesId, devicesId) &&
            const DeepCollectionEquality()
                .equals(other.facilityIc, facilityIc) &&
            const DeepCollectionEquality()
                .equals(other.parkingName, parkingName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.tel, tel) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.priceInformation, priceInformation) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality()
                .equals(other.parkedArea, parkedArea) &&
            const DeepCollectionEquality()
                .equals(other.walkingStatus, walkingStatus) &&
            const DeepCollectionEquality()
                .equals(other.exitStatus, exitStatus) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated_at, lastUpdated_at));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(devicesId),
      const DeepCollectionEquality().hash(facilityIc),
      const DeepCollectionEquality().hash(parkingName),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(tel),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(priceInformation),
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(parkedArea),
      const DeepCollectionEquality().hash(walkingStatus),
      const DeepCollectionEquality().hash(exitStatus),
      const DeepCollectionEquality().hash(lastUpdated_at));

  @JsonKey(ignore: true)
  @override
  _$ParkingCopyWith<_Parking> get copyWith =>
      __$ParkingCopyWithImpl<_Parking>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParkingToJson(this);
  }
}

abstract class _Parking implements Parking {
  const factory _Parking(
      {@JsonKey(name: 'devices_id') int devicesId,
      @JsonKey(name: 'facility_ic') String facilityIc,
      @JsonKey(name: 'parking_name') String parkingName,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'tel') String tel,
      @JsonKey(name: 'note') String note,
      @JsonKey(name: 'price_information') String priceInformation,
      @JsonKey(name: 'started_at') String startedAt,
      @JsonKey(name: 'parked_area') String parkedArea,
      @JsonKey(name: 'walking_status') int walkingStatus,
      @JsonKey(name: 'exit_status') int exitStatus,
      @JsonKey(name: 'last_updated_at') String lastUpdated_at}) = _$_Parking;

  factory _Parking.fromJson(Map<String, dynamic> json) = _$_Parking.fromJson;

  @override
  @JsonKey(name: 'devices_id')
  int get devicesId;
  @override
  @JsonKey(name: 'facility_ic')
  String get facilityIc;
  @override
  @JsonKey(name: 'parking_name')
  String get parkingName;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'tel')
  String get tel;
  @override
  @JsonKey(name: 'note')
  String get note;
  @override
  @JsonKey(name: 'price_information')
  String get priceInformation;
  @override
  @JsonKey(name: 'started_at')
  String get startedAt;
  @override
  @JsonKey(name: 'parked_area')
  String get parkedArea;
  @override
  @JsonKey(name: 'walking_status')
  int get walkingStatus;
  @override
  @JsonKey(name: 'exit_status')
  int get exitStatus;
  @override
  @JsonKey(name: 'last_updated_at')
  String get lastUpdated_at;
  @override
  @JsonKey(ignore: true)
  _$ParkingCopyWith<_Parking> get copyWith =>
      throw _privateConstructorUsedError;
}
