import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';

class AppTextTheme{
  AppTextTheme._();
  static const TextTheme lightTextTheme = TextTheme(

    // display text theme
    displayLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.bold, color: AppLightColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: AppSizes.fontSizeXxxL, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),
    displaySmall:  TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),

    // headline text theme
    headlineLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.w500, color: AppLightColors.textWhiteColor),
    headlineMedium: TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w700, color: AppLightColors.textWhiteColor),
    headlineSmall: TextStyle(fontSize: AppSizes.fontSizeXl, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),

    // title text theme
    titleLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),
    titleMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500, color: AppLightColors.textWhiteColor),
    titleSmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppLightColors.textWhiteColor),

    // body text theme
    bodyLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),
    bodyMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w400, color: AppLightColors.textWhiteColor),
    bodySmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppLightColors.greyColor),

    // label text theme
    labelLarge: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w500, color: AppLightColors.textWhiteColor),
    labelMedium: TextStyle(fontSize: AppSizes.fontSizeXs, fontWeight: FontWeight.w400, color: AppLightColors.textWhiteColor),
    labelSmall: TextStyle(fontSize: AppSizes.fontSizeXxs, fontWeight: FontWeight.w400, color: AppLightColors.textWhiteColor),

  );

  static const TextTheme darkTextTheme = TextTheme(

    // display text theme
    displayLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.bold, color: AppDarkColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: AppSizes.fontSizeXxxL, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),
    displaySmall:  TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),

    // headline text theme
    headlineLarge: TextStyle(fontSize: AppSizes.fontSizeL, fontWeight: FontWeight.w500, color: AppDarkColors.textWhiteColor),
    headlineMedium: TextStyle(fontSize: AppSizes.fontSizeXxl, fontWeight: FontWeight.w700, color: AppDarkColors.textWhiteColor),
    headlineSmall: TextStyle(fontSize: AppSizes.fontSizeXl, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),

    // title text theme
    titleLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),
    titleMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500, color: AppDarkColors.textWhiteColor),
    titleSmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppDarkColors.textWhiteColor),

    // body text theme
    bodyLarge: TextStyle(fontSize: AppSizes.fontSizeLg, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),
    bodyMedium: TextStyle(fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w400, color: AppDarkColors.textWhiteColor),
    bodySmall: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w400, color: AppDarkColors.greyColor),

    // label text theme
    labelLarge: TextStyle(fontSize: AppSizes.fontSizeSm, fontWeight: FontWeight.w500, color: AppDarkColors.textWhiteColor),
    labelMedium: TextStyle(fontSize: AppSizes.fontSizeXs, fontWeight: FontWeight.w400, color: AppDarkColors.textWhiteColor),
    labelSmall: TextStyle(fontSize: AppSizes.fontSizeXxs, fontWeight: FontWeight.w400, color: AppDarkColors.textWhiteColor),
  );
}

