import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';

class AppCardTheme{
  AppCardTheme._();
  static const CardTheme cardThemeLight = CardTheme(
    color: AppLightColors.whiteColor,
    shadowColor: AppLightColors.shadowColor,
    elevation: AppSizes.cardElevationMd,
  );

  static const CardTheme cardThemeDark = CardTheme(
    color: AppDarkColors.whiteColor,
    shadowColor: AppDarkColors.shadowColor,
    elevation: AppSizes.cardElevationMd,
  );
}