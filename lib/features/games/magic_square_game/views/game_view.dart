import 'package:easy_games/features/games/magic_square_game/widgets/field_grid_widget.dart';
import 'package:easy_games/features/games/magic_square_game/widgets/number_list_widget.dart';
import 'package:easy_games/features/games/magic_square_game/widgets/progress_bar_widget.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MagicSquareGamePage extends StatelessWidget {
  const MagicSquareGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Time: 20',
                    style: ES.textStyle.medium(color: Theme.of(context).colorScheme.secondary),
                  ),
                  const ProgressBarWidget(),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FieldGridWidget(),
                  NumberListWidget(length: 9),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
