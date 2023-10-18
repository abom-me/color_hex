import 'package:flutter/material.dart';

import '../model/hex_model.dart';

HexToColorModel colorToHex(Color color) {
  String hexColor = color.value.toRadixString(16).substring(2);
  String hexColor1 = color.toString();
  return HexToColorModel.fromJson({'hex': "#$hexColor", 'color': hexColor1});
}
