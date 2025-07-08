// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

extension ColorExtenstion on Color {
  String toHex() {
    return '#${value.toRadixString(16).padLeft(8, '0')}';
  }

  Color toColor() {
    return Color(int.parse(toHex().substring(1), radix: 16) + 0xFF000000);
  }

  bool isLight() {
    final double luminance = computeLuminance();
    return luminance > 0.5;
  }

  bool isDark() {
    return !isLight();
  }
}
