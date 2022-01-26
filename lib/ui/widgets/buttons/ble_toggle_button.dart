import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BleToggleButton extends StatefulWidget {
  final String? text;
  final Color? color;
  final Function? onPressed;

  const BleToggleButton({this.text, this.color, this.onPressed}) : super();

  @override
  State<StatefulWidget> createState() {
    return BleToggleButtonStateState();
  }
}

class ButtonColor {
  final Color primaryColor;

  ButtonColor({required this.primaryColor});
}

class BleToggleButtonStateState extends State<BleToggleButton> {
  var isOn = true;

  BleToggleButtonStateState();

  void onPressed() {
    setState(() {
      widget.onPressed?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: widget.text != null ? Text(widget.text!) : null,
        trailing: CupertinoSwitch(
          value: isOn,
          activeColor: widget.color ?? Colors.blue,
          onChanged: (bool value) {
            setState(() {
              isOn = value;
            });
          },
        ),
        onTap: () {
          setState(() {
            isOn = !isOn;
          });
        },
      ),
    );
  }
}
