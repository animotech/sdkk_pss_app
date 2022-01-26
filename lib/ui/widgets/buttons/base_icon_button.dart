import 'package:flutter/material.dart';

class BaseIconButton extends StatefulWidget {
  final Function? onPressed;

  const BaseIconButton({this.onPressed}) : super();

  @override
  State<StatefulWidget> createState() {
    return BaseIconButtonStateState();
  }
}

class ButtonColor {
  final Color bgColor;
  final Color iconColor;

  ButtonColor({required this.bgColor, required this.iconColor});
}

class BaseIconButtonStateState extends State<BaseIconButton> {
  var primaryColor =
      ButtonColor(bgColor: Colors.lightBlue, iconColor: Colors.white);
  var disableColor = ButtonColor(bgColor: Colors.grey, iconColor: Colors.black);

  var icon = Icons.bluetooth;
  var isOn = true;
  var buttonSize = 50.0;
  var iconSize = 24.0;

  BaseIconButtonStateState();

  void onPressed() {
    setState(() {
      widget.onPressed?.call();
    });
  }

  @override
  Widget build(BuildContext context) {
    var buttonColor = isOn ? primaryColor : disableColor;

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            primary: buttonColor.bgColor,
            minimumSize: Size(buttonSize, buttonSize)),
        onPressed: this.onPressed,
        child: Icon(
          icon,
          color: buttonColor.iconColor,
          size: iconSize,
        ));
  }
}
