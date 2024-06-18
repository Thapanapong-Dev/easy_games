import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LevelLabelWidget extends StatelessWidget {
  const LevelLabelWidget({super.key, required this.title, this.onPressed});

  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33.w,
      padding: EdgeInsets.all(1.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(foregroundColor: ES.color.lighterGrey),
        child: Text(title),
      ),
    );
  }
}
