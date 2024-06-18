import 'package:easy_games/features/login/provider.dart';
import 'package:easy_games/features/login/widgets/text_form_field_widget.dart';
import 'package:easy_games/utils/custom/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Login'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextFormFieldWidget(hintText: 'Enter your gmail'),
            SizedBox(height: 1.5.h),
            const TextFormFieldWidget(hintText: 'Enter your password'),
            SizedBox(height: 3.h),
            SizedBox(
              width: 50.w,
              child: ElevatedButton(
                onPressed: () {
                  ref.read(authProvider.notifier).signIn();
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
