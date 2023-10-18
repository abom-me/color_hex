import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

extension HexToColor on String {
  Color get convertToColor {
    if (contains("#") && length == 7) {
      return Color(int.parse(replaceAll("#", "0x")) + 0xFF000000);
    } else {
      if (kDebugMode) {
        print("Error: This is nota hex color, EX: #FFFFFF");
      }
      return const Color(0xFF000000);
    }
  }
}
