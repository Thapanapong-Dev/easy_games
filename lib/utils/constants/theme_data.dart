import 'package:easy_games/utils/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);
  static ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      textTheme: GoogleFonts.silkscreenTextTheme(),
      colorScheme: colorScheme,
      canvasColor: colorScheme.surface,
      scaffoldBackgroundColor: colorScheme.surface,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: colorScheme.onPrimary,
          backgroundColor: colorScheme.primary,
          shape: const RoundedRectangleBorder(),
          textStyle: GoogleFonts.silkscreen(fontSize: ES.size.medium),
        ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: colorScheme.primary),
    );
  }

  static ColorScheme lightColorScheme = ColorScheme(
    primary: ES.color.darkGrey,
    onPrimary: ES.color.orange,
    secondary: ES.color.darkGrey,
    onSecondary: ES.color.orange,
    surface: ES.color.lighterGrey,
    onSurface: ES.color.grey,
    error: ES.color.red,
    onError: ES.color.lighterGrey,
    brightness: Brightness.light,
  );
  static final ColorScheme darkColorScheme = ColorScheme(
    primary: ES.color.darkerGrey,
    onPrimary: ES.color.orange,
    secondary: ES.color.darkerGrey,
    onSecondary: ES.color.orange,
    surface: ES.color.darkGrey,
    onSurface: ES.color.grey,
    error: ES.color.red,
    onError: ES.color.lighterGrey,
    brightness: Brightness.dark,
  );
}
