import 'package:easy_games/configures/route.dart';
import 'package:easy_games/features/home/widgets/game_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameListWidget extends StatelessWidget {
  const GameListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 1.w),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(50.w),
        children: [
          TableRow(children: [
            GameLabelWidget(
              title: 'Magic Square',
              icon: Icons.grid_on_outlined,
              onPressed: () {
                context.pushNamed(AppRoute.magicSquareMenuPage.name);
              },
            ),
            const GameLabelWidget(title: 'Game 2', icon: Icons.grid_on_outlined),
          ]),
          const TableRow(children: [
            GameLabelWidget(title: 'Game 3: Thapanapong', icon: Icons.grid_on_outlined),
            GameLabelWidget(title: 'Game 4', icon: Icons.grid_on_outlined),
          ]),
          const TableRow(children: [
            GameLabelWidget(title: 'Game 5', icon: Icons.grid_on_outlined),
            GameLabelWidget(title: 'Game 6', icon: Icons.grid_on_outlined),
          ]),
          const TableRow(children: [
            GameLabelWidget(title: 'Game 7', icon: Icons.grid_on_outlined),
            GameLabelWidget(title: 'Game 8', icon: Icons.grid_on_outlined),
          ]),
        ],
      ),
    );
  }
}
