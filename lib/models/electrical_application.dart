import 'package:flutter/material.dart';

class ElectricalAppliance {
  String? title;
  String? subTitle;
  ValueNotifier<bool> activated;

  ElectricalAppliance({
    this.title,
    this.subTitle,
    required this.activated,
  });
}
