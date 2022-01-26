import 'package:flutter/material.dart';
import 'package:sdk_pss_app/core/styles/text.dart';
import 'package:sdk_pss_app/ui/widgets/icons/common_icons.dart';

class InfoView extends StatefulWidget {
  final List<NoticeData> items;

  const InfoView({required this.items}) : super();

  @override
  State<StatefulWidget> createState() {
    return InfoViewStateState();
  }
}

enum NoticeType { OK, Caution }

class NoticeData {
  NoticeType type;
  String text;

  NoticeData({required this.type, required this.text});
}

class InfoViewStateState extends State<InfoView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          // アイコンの設定
          Widget? icon = null;
          switch (widget.items[index].type) {
            case NoticeType.OK:
              icon = CommonIcons.Check();
              break;
            case NoticeType.Caution:
              icon = CommonIcons.Caution();
              break;
            default:
              icon = CommonIcons.Check();
              break;
          }

          return Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: icon,
                    padding: EdgeInsets.only(left: 10, right: 20),
                  ),
                  Expanded(
                    child: Text(
                      widget.items[index].text,
                      style: TextStyles.S,
                    ),
                  ),
                ],
              ));
        });
  }
}
