import 'package:flutter/material.dart';
import '../model/hex_model.dart';

extension ColorToHex on Color {
  HexToColorModel get convertToHex {
    String hexColor = value.toRadixString(16).substring(2);
    String hexColor1 = toString();
    return HexToColorModel.fromJson({'hex': "#$hexColor", 'color': hexColor1});
  }
}
