import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';

class AppChipTheme{
  AppChipTheme._();
  static ChipThemeData chipThemeLight = ChipThemeData(
      disabledColor: AppLightColors.greyColor.withValues(alpha: 0.4),
      labelStyle: const TextStyle(color:  AppLightColors.blackColor),
      selectedColor: AppLightColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.md),
      checkmarkColor:  AppLightColors.whiteColor
  );

  static ChipThemeData chipThemeDark = ChipThemeData(
      disabledColor: AppDarkColors.greyColor,
      labelStyle: const TextStyle(color: AppDarkColors.whiteColor),
      selectedColor: AppDarkColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: AppSizes.md, vertical: AppSizes.md),
      checkmarkColor: AppDarkColors.whiteColor
  );
}