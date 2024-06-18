import 'package:flutter/material.dart';

final functionHelper = FunctionHelper();

class FunctionHelper {
  bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
