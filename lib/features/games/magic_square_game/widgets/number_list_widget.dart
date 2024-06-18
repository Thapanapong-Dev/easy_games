import 'package:dotted_border/dotted_border.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumberListWidget extends StatelessWidget {
  const NumberListWidget({super.key, required this.length});
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.w),
      child: DottedBorder(
        strokeWidth: 2,
        color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        borderType: BorderType.RRect,
        dashPattern: const [5, 5],
        child: Container(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
          padding: EdgeInsets.all(3.w),
          alignment: Alignment.center,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 3.w,
              crossAxisSpacing: 3.w,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(1.w),
                color: ES.color.orange,
                alignment: Alignment.center,
                child: Text(
                  (index + 1).toString(),
                  style: ES.textStyle.large(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
