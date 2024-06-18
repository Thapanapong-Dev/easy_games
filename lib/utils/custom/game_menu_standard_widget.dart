import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GameMenuStandardWidget extends StatelessWidget {
  const GameMenuStandardWidget({
    super.key,
    required this.newGameOnPress,
    required this.continueOnPress,
    required this.scoreBoardOnPress,
  });
  final Function() newGameOnPress;
  final Function() continueOnPress;
  final Function() scoreBoardOnPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 80.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: ES.color.darkGrey,
              backgroundColor: ES.color.orange,
            ),
            onPressed: newGameOnPress,
            child: const Text("New game"),
          ),
        ),
        SizedBox(
          width: 80.w,
          child: ElevatedButton(
            onPressed: continueOnPress,
            child: const Text("Continue"),
          ),
        ),
        SizedBox(
          width: 80.w,
          child: ElevatedButton(
            onPressed: scoreBoardOnPress,
            child: const Text('Score Board'), // previous games
          ),
        )
      ],
    );
  }
}
