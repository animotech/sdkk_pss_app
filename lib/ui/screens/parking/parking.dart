import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_pss_app/config/config.dart';
import 'package:sdk_pss_app/core/styles/text.dart';
import 'package:sdk_pss_app/di.dart';
import 'package:sdk_pss_app/ui/screens/parking/widgets/info_view.dart';
import 'package:sdk_pss_app/ui/view_models/parking_detail.dart';
import 'package:sdk_pss_app/ui/widgets/buttons/ble_toggle_button.dart';
import 'package:sdk_pss_app/ui/widgets/buttons/common_buttons.dart';

import 'widgets/detail_view.dart';

class ParkingScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paking ${getIt<Config>().ENV}'),
      ),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  buildBody(BuildContext context) {
    var detailModel = Provider.of<ParkingDetailModel>(context);

    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              child: Text("ご利用の駐車場", style: TextStyles.M),
            ),
            Container(width: 250, child: BleToggleButton(text: "Bluetooth EL")),
            Consumer<ParkingDetailModel>(builder: (BuildContext context,
                ParkingDetailModel model, Widget? child) {
              return InfoView(items: model.notices);
            }),
            DetailView(),
            FloatingActionButton.extended(
              label: Text('API call test'),
              onPressed: () async {
                await detailModel.getDetail("123123123");
              },
              icon: Icon(Icons.add),
              backgroundColor: Colors.indigo,
            ),
            FloatingActionButton.extended(
              label: Text('BLE スキャン開始test'),
              onPressed: () async {
                detailModel.startBleScan();
              },
              icon: Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
            FloatingActionButton.extended(
              label: Text('BLE 送信開始test'),
              onPressed: () async {
                detailModel.startBleBarodcast();
              },
              icon: Icon(Icons.add),
              backgroundColor: Colors.deepOrangeAccent,
            ),
            CommonButtons.Outlined(
                text: "更新",
                onPressed: () {
                  print("pressed: 更新");
                })
          ],
        ));
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
