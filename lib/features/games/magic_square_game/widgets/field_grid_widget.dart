import 'package:easy_games/features/games/magic_square_game/widgets/field_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FieldGridWidget extends StatelessWidget {
  const FieldGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 1.w),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(23.w),
        children: const [
          TableRow(children: [
            FieldWidget(),
            FieldWidget(),
            FieldWidget(),
          ]),
          TableRow(children: [
            FieldWidget(),
            FieldWidget(),
            FieldWidget(),
          ]),
          TableRow(children: [
            FieldWidget(),
            FieldWidget(),
            FieldWidget(),
          ]),
        ],
      ),
    );
  }
}
