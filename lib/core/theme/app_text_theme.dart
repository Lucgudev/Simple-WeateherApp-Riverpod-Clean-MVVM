import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  static TextTheme defaultTextTheme = Typography.material2021().black.apply(
        displayColor: AppColors.textPrimary,
        bodyColor: AppColors.textPrimary,
        decorationColor: AppColors.textPrimary,
      );

  static TextTheme appTextTheme = TextTheme(
    displayLarge: defaultTextTheme.displayLarge?.merge(inter),
    displayMedium: defaultTextTheme.displayMedium?.merge(inter),
    displaySmall:
        AppTextTheme.defaultTextTheme.displaySmall?.merge(AppTextTheme.inter),
    headlineLarge: AppTextTheme.defaultTextTheme.headlineLarge
        ?.merge(AppTextTheme.headlineLarge),
    headlineMedium: AppTextTheme.defaultTextTheme.headlineMedium
        ?.merge(AppTextTheme.headlineMedium),
    headlineSmall: AppTextTheme.defaultTextTheme.headlineSmall
        ?.merge(AppTextTheme.headlineSmall),
    titleLarge:
        AppTextTheme.defaultTextTheme.titleLarge?.merge(AppTextTheme.titleLarge),
    titleMedium: AppTextTheme.defaultTextTheme.titleMedium
        ?.merge(AppTextTheme.titleMedium),
    titleSmall: AppTextTheme.defaultTextTheme.titleSmall
        ?.merge(AppTextTheme.titleSmall),
    bodyLarge: AppTextTheme.defaultTextTheme.bodyLarge
        ?.merge(AppTextTheme.bodyLarge),
    bodyMedium: AppTextTheme.defaultTextTheme.bodyMedium
        ?.merge(AppTextTheme.bodyMedium),
    bodySmall: AppTextTheme.defaultTextTheme.bodySmall
        ?.merge(AppTextTheme.bodySmall),
    labelLarge: AppTextTheme.defaultTextTheme.labelLarge
        ?.merge(AppTextTheme.labelLarge),
    labelMedium: AppTextTheme.defaultTextTheme.labelMedium
        ?.merge(AppTextTheme.labelMedium),
    labelSmall: AppTextTheme.defaultTextTheme.labelSmall
        ?.merge(AppTextTheme.labelSmall),
  );

  static const TextStyle bodySmall = TextStyle(
    debugLabel: 'bodySmall',
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
  static const TextStyle smallTextBold = TextStyle(
    debugLabel: 'smallTextBold',
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );
  static const TextStyle bodyMedium = TextStyle(
    debugLabel: 'normalTextRegular',
    fontFamily: 'Inter',
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
  static const TextStyle titleSmall = TextStyle(
    debugLabel: 'titleSmall',
    fontFamily: 'Inter',
    fontSize: 14.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );
  static const TextStyle bodyLarge = TextStyle(
    debugLabel: 'bodyLarge',
    fontFamily: 'Inter',
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
  );
  static const TextStyle titleMedium = TextStyle(
    debugLabel: 'titleMedium',
    fontFamily: 'Inter',
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
  );
  static const TextStyle titleLarge = TextStyle(
    debugLabel: 'titleLarge',
    fontFamily: 'Inter',
    fontSize: 22.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  );
  static const TextStyle headlineSmall = TextStyle(
    debugLabel: 'headlineSmall',
    fontFamily: 'Inter',
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );
  static const TextStyle headlineMedium = TextStyle(
    debugLabel: 'headlineMedium',
    fontFamily: 'Inter',
    fontSize: 28.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  );
  static const TextStyle headlineLarge = TextStyle(
    debugLabel: 'headlineLarge',
    fontFamily: 'Inter',
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );
  static const TextStyle labelLarge = TextStyle(
    debugLabel: 'labelLarge',
    fontFamily: 'Inter',
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    letterSpacing: -0.5,
  );
  static const TextStyle labelMedium = TextStyle(
    debugLabel: 'labelMedium',
    fontFamily: 'Inter',
    fontSize: 12.0,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.5,
  );
  static const TextStyle labelSmall = TextStyle(
    debugLabel: 'labelSmall',
    fontFamily: 'Inter',
    fontSize: 11.0,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.5,
  );
  static const TextStyle inter = TextStyle(
    debugLabel: 'inter',
    fontFamily: 'Inter',
    decoration: TextDecoration.none,
    letterSpacing: -0.5,
  );
}
