import 'package:flutter/material.dart';

import 'base_icon_button.dart';

class RefreshButton extends BaseIconButton {
  @override
  State<StatefulWidget> createState() {
    return RefreshButtonStateState();
  }
}

class RefreshButtonStateState extends BaseIconButtonStateState {
  RefreshButtonStateState() {
    icon = const IconData(0xe514, fontFamily: 'MaterialIcons');
  }
}
