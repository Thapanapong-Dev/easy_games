import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  TextStyle tiny({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: ES.size.tiny,
      color: color ?? ES.color.darkGrey,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  TextStyle small({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: ES.size.small,
      color: color ?? ES.color.darkGrey,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  TextStyle medium({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: ES.size.medium,
      color: color ?? ES.color.darkGrey,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  TextStyle large({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: ES.size.large,
      color: color ?? ES.color.darkGrey,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }

  TextStyle extraLarge({Color? color, FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: ES.size.extraLarge,
      color: color ?? ES.color.darkGrey,
      fontWeight: fontWeight ?? FontWeight.normal,
    );
  }
}
