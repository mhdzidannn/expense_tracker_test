import 'dart:math';

import 'package:flutter/material.dart';

final _random = Random();

int randomMaterialColor() {
  final r = _random.nextInt(256);
  final g = _random.nextInt(256);
  final b = _random.nextInt(256);
  return Color(0xFF000000 | (r << 16) | (g << 8) | b).toARGB32();
}
