import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';

class AppCheckBoxTheme{
  AppCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        side: BorderSide(
           color: AppLightColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return AppLightColors.whiteColor;
      } else {
        return AppLightColors.primaryColor;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return AppLightColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        side: BorderSide(
          color: AppLightColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm)
    ),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return AppDarkColors.whiteColor;
      } else {
        return AppDarkColors.primaryColor;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)) {
        return AppDarkColors.primaryColor;
      } else {
        return Colors.transparent;
      }
    }),
  );
}