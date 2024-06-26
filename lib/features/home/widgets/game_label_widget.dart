import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameLabelWidget extends StatelessWidget {
  const GameLabelWidget({super.key, required this.title, required this.icon, this.onPressed});

  final String title;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.w,
      padding: EdgeInsets.all(1.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(foregroundColor: ES.color.lighterGrey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 28.w,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(fontSize: ES.size.small),
              ),
            ),
            SizedBox(width: 1.w),
            Icon(icon, size: ES.size.large),
          ],
        ),
      ),
    );
  }
}
