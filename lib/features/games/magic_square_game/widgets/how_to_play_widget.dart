import 'package:easy_games/utils/custom/text_box_dot_widget.dart';
import 'package:flutter/material.dart';

class HowToPlayWidget extends StatelessWidget {
  const HowToPlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextBoxDotWidget(
      title: 'How to play',
      content: '''
Like most of my favorite math games and activities the rules can be summed up in a sentence or two.

i. Take a 3x3 box like the one at right and fill it with the digits 1-9.

ii. Using each digit only once.

iii. The Magic Square is complete when all rows, all columns
and both diagonals add up to the same number.
''',
    );
  }
}
