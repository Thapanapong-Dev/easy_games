import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Progress',
          style: ES.textStyle.medium(color: Theme.of(context).colorScheme.secondary),
        ),
        Container(
          width: 48.w,
          height: 2.h,
          color: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.only(
            left: 0.75.w,
            right: 0.75.w,
            top: 0.5.w,
            bottom: 0.5.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange,
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange,
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange,
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange.withOpacity(0.2),
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange.withOpacity(0.2),
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange.withOpacity(0.2),
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange.withOpacity(0.2),
              ),
              Container(
                width: 5.w,
                height: 2.h,
                color: ES.color.orange.withOpacity(0.2),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
