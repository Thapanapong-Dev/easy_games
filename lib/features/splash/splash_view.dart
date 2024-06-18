import 'package:easy_games/configures/route.dart';
import 'package:easy_games/utils/custom/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(isBack: false),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50.w,
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(AppRoute.loginPage.name);
                },
                child: const Text("Login"),
              ),
            ),
            SizedBox(
              width: 50.w,
              child: const ElevatedButton(
                onPressed: null,
                child: Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
