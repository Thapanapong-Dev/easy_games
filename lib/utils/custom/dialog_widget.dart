import 'package:easy_games/features/login/provider.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:easy_games/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final dialogWidget = DialogWidget();

class DialogWidget {
  Future showSettingDialog(BuildContext context, WidgetRef ref) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      functionHelper.isDarkMode(context) ? ES.color.darkGrey : ES.color.lighterGrey,
                  backgroundColor: functionHelper.isDarkMode(context) ? ES.color.lighterGrey : null,
                ),
                child: const Text("change language <English>"),
              ),
            ),
            SizedBox(
              width: 80.w,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).signOut();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: ES.color.red,
                  backgroundColor: functionHelper.isDarkMode(context) ? ES.color.lighterGrey : null,
                ),
                child: const Text("Logout"),
              ),
            ),
          ],
        );
      },
    );
  }
}
