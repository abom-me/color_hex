import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  print(hex.length);
  print(hex);
  if (hex.contains("#") && hex.length == 7) {
    return Color(int.parse(hex.replaceAll("#", "0x")) + 0xFF000000);
  } else {
    if (kDebugMode) {
      print("Error: This is nota hex color, EX: #FFFFFF");
    }
    return const Color(0xFF000000);
  }
}
