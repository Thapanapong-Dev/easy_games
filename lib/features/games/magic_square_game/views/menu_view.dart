import 'package:easy_games/configures/route.dart';
import 'package:easy_games/features/games/magic_square_game/widgets/how_to_play_widget.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:easy_games/utils/custom/app_bar_widget.dart';
import 'package:easy_games/utils/custom/game_menu_standard_widget.dart';
import 'package:easy_games/utils/custom/level_label_widget.dart';
import 'package:easy_games/utils/custom/level_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MagicSquareMenuPage extends StatelessWidget {
  const MagicSquareMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Magic Square',
        titleTextStyle: ES.textStyle.large(color: ES.color.orange),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 1.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HowToPlayWidget(),
                SizedBox(height: 1.h),
                LevelListWidget(
                  levelWidgetList: [
                    LevelLabelWidget(
                      title: 'LV 1',
                      onPressed: () {
                        context.pushNamed(AppRoute.magicSquareGamePage.name);
                      },
                    ),
                    const LevelLabelWidget(title: 'LV 2'),
                    const LevelLabelWidget(title: 'LV 3'),
                  ],
                ),
                GameMenuStandardWidget(
                  newGameOnPress: () {},
                  continueOnPress: () {},
                  scoreBoardOnPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
