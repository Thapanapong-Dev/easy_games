import 'package:easy_games/features/games/magic_square_game/views/menu_view.dart';
import 'package:easy_games/features/home/home_view.dart';
import 'package:easy_games/features/login/login_view.dart';
import 'package:easy_games/features/login/provider.dart';
import 'package:easy_games/features/splash/splash_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final _key = GlobalKey<NavigatorState>();

enum AppRoute {
  splashPage,
  loginPage,
  homePage,
  magicSquareMenuPage,
}

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _key,

    /// Forwards diagnostic messages to the dart:developer log() API.
    debugLogDiagnostics: true,

    /// Initial Routing Location
    initialLocation: '/',

    /// The listeners are typically used to notify clients that the object has been
    /// updated.
    refreshListenable: authState,

    routes: [
      GoRoute(
        path: '/${AppRoute.splashPage.name}',
        name: AppRoute.splashPage.name,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: '/',
        name: AppRoute.homePage.name,
        builder: (context, state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: '/${AppRoute.loginPage.name}',
        name: AppRoute.loginPage.name,
        builder: (context, state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/${AppRoute.magicSquareMenuPage.name}',
        name: AppRoute.magicSquareMenuPage.name,
        builder: (context, state) {
          return const MagicSquareMenuPage();
        },
      ),
    ],
    redirect: (context, state) {
      /**
      * Your Redirection Logic Code  Here..........
      */
      final isAuthenticated = authState.isLoggedIn;

      /// [state.fullPath] will give current  route Path

      if (state.fullPath == '/${AppRoute.loginPage.name}') {
        return isAuthenticated ? null : '/${AppRoute.loginPage.name}';
      }

      /// null redirects to Initial Location

      return isAuthenticated ? null : '/${AppRoute.splashPage.name}';
    },
  );
});
