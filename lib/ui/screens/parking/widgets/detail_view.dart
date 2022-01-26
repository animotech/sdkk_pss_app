import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdk_pss_app/core/styles/text.dart';
import 'package:sdk_pss_app/ui/view_models/parking_detail.dart';
import 'package:sdk_pss_app/ui/widgets/buttons/common_buttons.dart';

class DetailView extends StatefulWidget {
  const DetailView() : super();

  @override
  State<StatefulWidget> createState() {
    return DetailViewStateState();
  }
}

class DetailViewStateState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    var detailModel = Provider.of<ParkingDetailModel>(context);

    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Card(
          elevation: 3,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    detailModel.parkingName,
                    style: TextStyles.L,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Row(children: [
                  Padding(
                      padding: EdgeInsets.only(right: 30),
                      child: Text("入場時刻", style: TextStyles.S)),
                  Text(detailModel.startedAt, style: TextStyles.M)
                ]),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Text("経過時間", style: TextStyles.S)),
                    Text(detailModel.parkingDuration, style: TextStyles.M)
                  ])),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  "駐車位置",
                  style: TextStyles.S,
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(detailModel.parkingArea, style: TextStyles.L2),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: CommonButtons.Primary(text: "料金情報"),
              ),
            ],
          ),
        ));
  }
}
