import 'package:flutter/material.dart';

class DefaultThemeGetter {
  static ThemeData get() {
    const primary = Color(0xFF000000);
    const onPrimary = Color(0xFFFFFFFF);
    const surface = Color(0xFFC78DF9);
    const onSurface = Color(0xFF000000);
    const background = Color(0xFFf7f8fa);
    const onBackground = Color(0xFF000000);

    return ThemeData(
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w600,
          fontSize: 30.0,
        ),
        displayMedium: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
        ),
        displaySmall: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w600,
          fontSize: 16.0,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        bodySmall: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w500,
          fontSize: 10.0,
        ),
        labelLarge: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w700,
          fontSize: 25.0,
        ),
        labelMedium: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
        labelSmall: TextStyle(
          fontFamily: 'SFPRODISPLAY',
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
      ).apply(
        bodyColor: onBackground,
        displayColor: onBackground,
      ),
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 3,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size(
              double.infinity,
              56.0,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.disabled)) {
                return primary.withOpacity(0.3);
              }
              return primary;
            },
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
              const Size(
                double.infinity,
                53.0,
              ),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            side: MaterialStateProperty.all(
              const BorderSide(color: primary),
            )),
      ), colorScheme: const ColorScheme(
        primary: primary,
        secondary: Colors.white,
        surface: surface,
        onSurface: onSurface,
        background: background,
        secondaryContainer: Colors.white,
        onBackground: onBackground,
        error: Colors.white,
        onError: Colors.white,
        brightness: Brightness.light,
        onPrimary: onPrimary,
        onSecondary: Colors.white,
      ).copyWith(background: background),
    );
  }
}
