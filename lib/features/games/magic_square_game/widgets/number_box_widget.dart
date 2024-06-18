import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumberBoxWidget extends StatelessWidget {
  const NumberBoxWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.w,
      padding: EdgeInsets.all(1.w),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(foregroundColor: ES.color.lighterGrey),
        child: Text(index.toString()),
      ),
    );
  }
}
