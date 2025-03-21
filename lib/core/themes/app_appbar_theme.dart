import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';
import 'package:sohan_flutter_template/core/themes/app_text_theme.dart';

class AppAppbarTheme{
  AppAppbarTheme._();
  static AppBarTheme appBarThemeLight = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: AppLightColors.whiteColor,
          size: AppSizes.iconMd
      ),
      actionsIconTheme: IconThemeData(
          color:  AppLightColors.whiteColor,
          size: AppSizes.iconMd
      ),
      titleTextStyle: AppTextTheme.lightTextTheme.bodyLarge
  );

  static AppBarTheme appBarThemeDark = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: AppDarkColors.whiteColor,
          size: AppSizes.iconMd
      ),
      actionsIconTheme: IconThemeData(
          color: AppDarkColors.whiteColor,
          size: AppSizes.iconMd
      ),
      titleTextStyle:  AppTextTheme.darkTextTheme.bodyLarge
  );
}