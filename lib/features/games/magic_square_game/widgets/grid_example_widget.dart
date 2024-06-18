import 'package:easy_games/features/games/magic_square_game/widgets/number_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridExampleWidget extends StatelessWidget {
  const GridExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 1.w),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(20.w),
        children: const [
          TableRow(children: [
            NumberBoxWidget(index: 0),
            NumberBoxWidget(index: 1),
            NumberBoxWidget(index: 2),
          ]),
          TableRow(children: [
            NumberBoxWidget(index: 3),
            NumberBoxWidget(index: 4),
            NumberBoxWidget(index: 5),
          ]),
          TableRow(children: [
            NumberBoxWidget(index: 6),
            NumberBoxWidget(index: 7),
            NumberBoxWidget(index: 8),
          ]),
        ],
      ),
    );
  }
}
