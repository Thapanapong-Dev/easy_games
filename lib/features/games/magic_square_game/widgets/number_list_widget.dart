import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NumberListWidget extends StatelessWidget {
  const NumberListWidget({super.key, required this.length});
  final int length;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 3.w),
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
    );
  }
}
