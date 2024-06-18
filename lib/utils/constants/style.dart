import 'dart:ui';

import 'package:easy_games/utils/constants/text_style.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ES {
  static final textStyle = AppTextStyle();
  static final size = _Size();
  static final color = _Color();
}

class _Size {
  final tiny = 2.5.w;
  final small = 3.w;
  final medium = 3.5.w;
  final large = 5.w;
  final extraLarge = 8.w;
}

class _Color {
  final grey = const Color(0xff5b5b5b);
  final lighterGrey = const Color(0xfff8f8f8);
  final lightGrey = const Color(0xffcdcdcd);
  final darkGrey = const Color(0xff222222);
  final darkerGrey = const Color(0xff141414);
  final orange = const Color(0xfffca311);
  final red = const Color(0xfffb4e4e);
  final white = const Color(0xffffffff);
  final black = const Color(0xff000000);
}
