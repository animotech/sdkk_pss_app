import 'package:flutter/material.dart';

import 'base_icon_button.dart';

class BleIconButton extends BaseIconButton {
  @override
  State<StatefulWidget> createState() {
    return BleIconButtonStateState();
  }
}

class BleIconButtonStateState extends BaseIconButtonStateState {
  BleIconButtonStateState() {
    icon = Icons.bluetooth;
  }

  @override
  void onPressed() {
    isOn = !isOn;
    super.onPressed();
  }
}
