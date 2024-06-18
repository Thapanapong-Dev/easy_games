import 'package:easy_games/features/games/magic_square_game/widgets/grid_example_widget.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:easy_games/utils/custom/app_bar_widget.dart';
import 'package:flutter/material.dart';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const GridExampleWidget(),
              const Spacer(),
              SizedBox(
                width: 80.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: ES.color.darkGrey,
                    backgroundColor: ES.color.orange,
                  ),
                  onPressed: () {},
                  child: const Text("Play now"),
                ),
              ),
              SizedBox(
                width: 80.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
