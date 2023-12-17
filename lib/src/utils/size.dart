import 'package:flutter/material.dart';

late Size size;

class AppSize {
  static const double figmaHeight = 932;
  static const double figmaWidth = 430;
}

extension SizeUtils on num {
  double get h {
    double value = (size.height * this) / AppSize.figmaHeight;
    return value;
  }

  double get w {
    double value = (size.width * this) / AppSize.figmaWidth;
    return value;
  }
}
