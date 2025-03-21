import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';
import 'package:sohan_flutter_template/core/themes/app_text_theme.dart';

class AppOutlineBtnTheme{
  AppOutlineBtnTheme._();
  static OutlinedButtonThemeData outlinedButtonThemeLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.transparent,
        side: const BorderSide(color: AppLightColors.whiteColor),
        textStyle: AppTextTheme.lightTextTheme.labelLarge,
        padding: EdgeInsets.symmetric(vertical: AppSizes.lg, horizontal: AppSizes.lg),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg))
    )
  );

  static OutlinedButtonThemeData outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.transparent,
        side: const BorderSide(color: AppDarkColors.whiteColor),
        textStyle: AppTextTheme.darkTextTheme.labelLarge,
        padding: EdgeInsets.symmetric(vertical: AppSizes.lg, horizontal: AppSizes.lg),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg))
    )
  );

}