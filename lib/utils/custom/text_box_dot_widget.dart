import 'package:dotted_border/dotted_border.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextBoxDotWidget extends StatelessWidget {
  const TextBoxDotWidget({super.key, required this.content, required this.title});
  final String content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 1.h),
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: DottedBorder(
              strokeWidth: 2,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
              borderType: BorderType.RRect,
              dashPattern: const [5, 5],
              child: Container(
                padding: EdgeInsets.only(
                  left: 3.w,
                  right: 3.w,
                  bottom: 3.w,
                  top: 5.w,
                ),
                width: 90.w,
                constraints: BoxConstraints(minHeight: 6.5.h),
                child: Text(
                  content,
                  style: ES.textStyle.small(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 1.h,
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 6.w),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Text(
                title,
                style: ES.textStyle.medium(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
