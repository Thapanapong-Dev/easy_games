import 'package:easy_games/main.dart';
import 'package:easy_games/utils/constants/style.dart';
import 'package:easy_games/utils/custom/dialog_widget.dart';
import 'package:easy_games/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    this.isBack = true,
    this.isSetting = false,
    this.title,
    this.titleTextStyle,
  });
  final bool isBack;
  final bool isSetting;
  final String? title;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: 20.w,
      centerTitle: true,
      leading: isBack
          ? IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: ES.color.grey,
                size: ES.size.extraLarge,
              ),
              onPressed: () => context.pop(),
            )
          : isSetting
              ? IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: ES.color.grey,
                    size: ES.size.extraLarge,
                  ),
                  onPressed: () => dialogWidget.showSettingDialog(context, ref),
                )
              : null,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "Easy Games",
            style: titleTextStyle ?? ES.textStyle.extraLarge(color: ES.color.orange),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.copyright_rounded,
                size: ES.size.small,
                color: ES.color.grey,
              ),
              Text(
                "2024 by kampoo",
                style: ES.textStyle.small(color: ES.color.grey),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: ES.size.small),
          child: SizedBox(
            height: 10.w,
            child: FittedBox(
              fit: BoxFit.fill,
              child: Switch.adaptive(
                applyCupertinoTheme: false,
                activeColor: ES.color.white,
                activeTrackColor: ES.color.orange,
                inactiveTrackColor: ES.color.white,
                inactiveThumbColor: ES.color.orange,
                value: functionHelper.isDarkMode(context),
                onChanged: (bool value) {
                  value
                      ? ref.read(themeModeProvider.notifier).state = ThemeMode.dark
                      : ref.read(themeModeProvider.notifier).state = ThemeMode.light;
                },
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(20.w);
}
