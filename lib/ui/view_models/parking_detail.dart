import 'package:beacon_broadcast/beacon_broadcast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:sdk_pss_app/core/utils/date_util.dart';
import 'package:sdk_pss_app/domain/services/parking_service.dart';
import 'package:sdk_pss_app/ui/screens/parking/widgets/info_view.dart';

class ParkingDetailModel extends ChangeNotifier {
  String parkingName = "ABC駐車場";
  String startedAt = "2022-01-25 11:30";
  String parkingDuration = "10分";
  String parkingArea = "3階 フロア２\nブロックA";

  List<NoticeData> _notices = <NoticeData>[
    NoticeData(type: NoticeType.OK, text: "更新")
  ];

  getDetail(String uuid) async {
    var parkingService = GetIt.I<ParkingService>();
    var parking = await parkingService.fetchParking(uuid);
    if (parking == null) {
      print("Failed to fetchParking");
      return;
    }

    print("parking: ${parking}");

    this.parkingName = parking.parkingName;

    // 入場時刻
    var startedDateTime =
        DateFormat("yyyy-MM-dd hh:mm").parse(parking.startedAt);
    String startedAt = DateFormat("yyyy年MM月dd日 hh時mm分").format(startedDateTime);
    this.startedAt = startedAt;

    // 経過時間
    Duration duration = DateTime.now().difference(startedDateTime);
    DurationData durationData = DateUtil.toDurationData(duration);
    if (durationData.hours > 0) {
      this.parkingDuration = "${durationData.hours}時間 ${durationData.minutes}分";
    } else {
      this.parkingDuration = "${durationData.minutes}分";
    }

    this.parkingArea = parking.parkedArea;

    notifyListeners();
  }

  List<NoticeData> get notices => _notices;

  void addNotice(NoticeData item, {bool clear = false}) {
    if (clear) {
      _notices.clear();
    }
    _notices.add(item);
    notifyListeners();
  }

  void clear() {
    _notices.clear();
    notifyListeners();
  }

  /**
   * BLE送信開始 test
   */
  void startBleBarodcast() async {
    BeaconBroadcast beaconBroadcast = BeaconBroadcast();

    BeaconStatus transmissionSupportStatus =
        await beaconBroadcast.checkTransmissionSupported();
    print(transmissionSupportStatus);
    switch (transmissionSupportStatus) {
      case BeaconStatus.supported:
        // ok
        break;
      case BeaconStatus.notSupportedMinSdk:
        return;
      case BeaconStatus.notSupportedBle:
        return;
      case BeaconStatus.notSupportedCannotGetAdvertiser:
        return;
    }

    beaconBroadcast
        .setUUID('39ED98FF-2900-441A-802F-9C398FC199D2')
        .setMajorId(1)
        .setMinorId(100)
        .setLayout('m:2-3=0215,i:4-19,i:20-21,i:22-23,p:24-24')
        .setManufacturerId(0x004c)
        .start();
  }

  /**
   * BLEスキャン test
   */
  void startBleScan() async {
    FlutterBlue flutterBlue = FlutterBlue.instance;
    flutterBlue.startScan(timeout: const Duration(seconds: 4));

    var subscription = await flutterBlue.scanResults.listen((results) async {
      for (ScanResult r in results) {
        var keys = r.advertisementData.manufacturerData.keys;
        if (keys.isEmpty) {
          continue;
        }
        // apple :0x004c
        var companyId = keys.first;
        print(
            '${r.device.name} found! device.id="${r.device.id}" rssi: "${r.rssi}" advertisementData=${r.advertisementData.toString()}');
      }
    });
  }
}
