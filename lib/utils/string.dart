import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Helper {
  static double W(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double h(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

