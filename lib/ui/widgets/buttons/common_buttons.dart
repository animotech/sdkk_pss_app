import 'package:flutter/material.dart';

class CommonButtons {
  static Primary(
      {required String text, double? size, VoidCallback? onPressed}) {
    return ElevatedButton(
      child: Text(text),
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          minimumSize: Size(90, 40)),
      onPressed: () {
        onPressed?.call();
      },
    );
  }

  static Outlined(
      {required String text, bool disabled = false, VoidCallback? onPressed}) {
    VoidCallback? onPressedCallback = null;
    if (!disabled) {
      onPressedCallback = () {
        onPressed?.call();
      };
    }

    var color = Colors.blue;
    if (disabled) {
      color = Colors.grey;
    }

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(width: 1.0, color: color),
          minimumSize: Size(90, 40)),
      onPressed: onPressedCallback,
      child: Text(text, style: TextStyle(color: color)),
    );
  }
}
