import 'package:dotted_border/dotted_border.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FieldWidget extends StatelessWidget {
  const FieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.w,
      padding: EdgeInsets.all(1.w),
      child: DottedBorder(
        strokeWidth: 2,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        borderType: BorderType.RRect,
        dashPattern: const [5, 5],
        child: Container(
          alignment: Alignment.center,
          child: Text(
            'X',
            style: ES.textStyle.large(color: Theme.of(context).colorScheme.secondary),
          ),
        ),
      ),
    );
  }
}
