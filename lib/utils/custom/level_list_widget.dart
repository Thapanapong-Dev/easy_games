import 'package:easy_games/utils/custom/level_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LevelListWidget extends StatelessWidget {
  const LevelListWidget({super.key, required this.levelWidgetList});

  final List<LevelLabelWidget> levelWidgetList;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 1.w),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(33.w),
        children: [
          TableRow(children: levelWidgetList),
        ],
      ),
    );
  }
}
