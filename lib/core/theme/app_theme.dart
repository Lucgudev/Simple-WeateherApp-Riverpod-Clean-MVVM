import 'package:flutter/material.dart';
import 'package:weatherapp/core/theme/app_text_theme.dart';

import 'app_colors.dart';

ThemeData get appTheme {
  return ThemeData.light(useMaterial3: true).copyWith(
    primaryColor: AppColors.colorPrimary,
    scaffoldBackgroundColor: AppColors.bgPrimary,
    colorScheme: ColorScheme.fromSwatch(
      backgroundColor: AppColors.bgPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.colorPrimary,
        foregroundColor: AppColors.bgPrimary,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
      side: const BorderSide(color: AppColors.colorPrimary),
      foregroundColor: AppColors.colorPrimary,
    )),
    textTheme: AppTextTheme.appTextTheme,
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: const EdgeInsets.fromLTRB(12.0, 14.0, 12.0, 14.0),
      fillColor: AppColors.bgTertiary,
      filled: true,
      constraints: const BoxConstraints(
        minHeight: 44,
      ),
      // hintStyle: appTextTheme.bodyMedium?.copyWith(
      //   color: AppColors.textTertiary,
      // ),
      iconColor: AppColors.textTertiary,
      suffixIconColor: AppColors.textTertiary,
      errorStyle: const TextStyle(
        color: AppColors.statusError,
        fontSize: 12,
      ),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.borderMinimal),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.borderMinimal),
      ),
      disabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.borderMinimal),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.borderMinimal),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.statusError),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        borderSide: BorderSide(color: AppColors.statusError),
      ),
    ),
  );
}
