import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';
import 'package:sohan_flutter_template/core/extensions/context_extensions.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/presentation/controllers/auth/forgot_password_controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgotPasswordController forgotPasswordController = Get.find<ForgotPasswordController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                if (context.isLandscapeOrientation) const SizedBox(height: AppSizes.spaceBetweenSections,)
                else const SizedBox(),

                // content

                const SizedBox(height: AppSizes.spaceBetweenSections,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
