import 'package:flutter/material.dart';

abstract class _DesignTheme {
  const _DesignTheme();
  static const double _titleLargeFontSize = 18;
  static const double _titleMediumFontSize = 14;
  static const double _titleSmallFontSize = 12;

  static const double _bodyLargeFontSize = 16;
  static const double _bodyMediumFontSize = 14;
  static const double _bodySmallFontSize = 12;

  static const double _labelLargeFontSize = 26;

  // ignore: long-method
  TextTheme _textTheme(final Color color) => TextTheme(
        titleLarge: TextStyle(
          color: color,
          fontSize: _titleLargeFontSize,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: color,
          fontSize: _titleMediumFontSize,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: color,
          fontSize: _titleSmallFontSize,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: color,
          fontSize: _bodyLargeFontSize,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: color,
          fontSize: _bodyMediumFontSize,
          fontWeight: FontWeight.w500,
          overflow: TextOverflow.clip,
        ),
        bodySmall: TextStyle(
          color: color,
          fontSize: _bodySmallFontSize,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: color,
          fontSize: _labelLargeFontSize,
          fontWeight: FontWeight.w500,
        ),
      );
  // ignore: long-method
  ThemeData _themeData({
    required final ColorScheme colorScheme,
  }) =>
      ThemeData(
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.background,
        useMaterial3: true,
        primaryColor: colorScheme.primary,
        fontFamily: 'packages/design_theme/pingfang',
        iconTheme: IconThemeData(
          color: colorScheme.onBackground,
        ),
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: colorScheme.secondary),
        dialogTheme: const DialogTheme(backgroundColor: Colors.transparent),
        bottomSheetTheme: const BottomSheetThemeData(
          modalBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
        ),
        dividerColor: colorScheme.onSurface,
        inputDecorationTheme: InputDecorationTheme(
          hoverColor: colorScheme.onSurface,
          fillColor: colorScheme.onSurface,
          iconColor: colorScheme.onBackground,
          focusColor: colorScheme.onSurface,
          suffixIconColor: colorScheme.onSurface,
          prefixIconColor: colorScheme.onSurface,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.onSurface,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: colorScheme.onSurface,
            ),
          ),
          labelStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
          hintStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
          suffixStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
          helperStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
          prefixStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
          counterStyle: TextStyle(
            color: colorScheme.onSurface,
          ),
        ),
        textTheme: _textTheme(colorScheme.onBackground),
        appBarTheme: AppBarTheme(
          elevation: 0,
          titleTextStyle: TextStyle(
            color: (colorScheme.onSurface as MaterialColor).shade50,
          ),
          iconTheme: IconThemeData(
            color: colorScheme.secondary,
          ),
          backgroundColor: colorScheme.background,
        ),
      );

  ColorScheme get _lightColorScheme;
  ColorScheme get _darkColorScheme;

  ThemeData get light => _themeData(colorScheme: _lightColorScheme);
  ThemeData get dark => _themeData(colorScheme: _darkColorScheme);
}

/// DesignTheme.
class DesignTheme extends _DesignTheme {
  /// DesignTheme.
  const DesignTheme();

  @override
  ColorScheme get _lightColorScheme => const ColorScheme(
        brightness: Brightness.light,
        background: Color(0xFFF2F4F6),
        onBackground: Color(0XFF060F1D),
        surface: Color(0XFFFFFFFF),
        onSurface: MaterialColor(
          0xFF09244B,
          <int, Color>{
            50: Color(0xFF09244B),
            100: Color(0xFF8491A5),
            200: Color(0xFFB5BDC9),
            300: Color(0xFF526581),
          },
        ),
        primary: Color(0xFF007AFF),
        onPrimary: Color(0XFFFFFFFF),
        secondary: MaterialColor(
          0xFF007AFF,
          <int, Color>{
            50: Color(0xFF007AFF),
            100: Color(0xFF02CACD),
            200: Color(0xFFFDAD15),
            300: Color(0xFF2AC670),
            400: Color(0xFF956AFF),
          },
        ),
        onSecondary: Color(0XFFB7BCC5),
        error: Color(0XFFFF6252),
        onError: Color(0XFFFFFFFF),
      );

  @override
  ColorScheme get _darkColorScheme => const ColorScheme(
        brightness: Brightness.dark,
        background: Color(0xFF131722),
        onBackground: Color(0XFF060F1D),
        surface: Color(0XFF1B2130),
        onSurface: MaterialColor(
          0xFFFFFFFF,
          <int, Color>{
            50: Color.fromRGBO(255, 255, 255, 0.9),
            100: Color.fromRGBO(255, 255, 255, 0.5),
            200: Color.fromRGBO(255, 255, 255, 0.3),
            300: Color.fromRGBO(255, 255, 255, 0.7),
          },
        ),
        primary: Color(0xFF007AFF),
        onPrimary: Color.fromRGBO(255, 255, 255, 0.9),
        secondary: MaterialColor(
          0xFF007AFF,
          <int, Color>{
            50: Color(0xFF007AFF),
            100: Color(0xFF02CACD),
            200: Color(0xFFFDAD15),
            300: Color(0xFF2AC670),
            400: Color(0xFF956AFF),
          },
        ),
        onSecondary: Color(0XFFB7BCC5),
        error: Color(0XFFFF6252),
        onError: Color(0XFFFFFFFF),
      );
}
