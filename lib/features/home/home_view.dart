import 'package:easy_games/features/home/widgets/game_list_widget.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:easy_games/utils/custom/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarWidget(
        isBack: false,
        isSetting: true,
        title: 'Home',
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const GameListWidget(),
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
