import 'package:flutter/material.dart';

extension TextEditingControllerExtension on TextEditingController {
  int toInt() {
    return int.tryParse(text) ?? 0;
  }
}
