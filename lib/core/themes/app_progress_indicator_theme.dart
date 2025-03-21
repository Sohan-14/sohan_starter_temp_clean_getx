import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppProgressIndicatorTheme{
  AppProgressIndicatorTheme._();
  static const ProgressIndicatorThemeData progressIndicatorThemeLight = ProgressIndicatorThemeData(
    color: AppLightColors.whiteColor,
    linearTrackColor: AppLightColors.secondaryColor,
  );

  static  ProgressIndicatorThemeData progressIndicatorThemeDark = ProgressIndicatorThemeData(
    color: AppDarkColors.whiteColor,
    linearTrackColor: AppDarkColors.secondaryColor.withValues(alpha: 0.5),
  );
}