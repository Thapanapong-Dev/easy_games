import 'package:easy_games/configures/route.dart';
import 'package:easy_games/utils/constants/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

void main() {
  runApp(const ProviderScope(child: EasyGames()));
}

class EasyGames extends ConsumerWidget {
  const EasyGames({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp.router(
        themeMode: ref.watch(themeModeProvider),
        theme: GlobalThemData.lightThemeData,
        darkTheme: GlobalThemData.darkThemeData,
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      );
    });
  }
}
