import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/extensions/context_extensions.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/core/utils/helper_method.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.firstLabel,
    required this.secondLabel,
    this.isExpanded = false,
    this.onPress = HelperMethod.emptyCallback,
  });

  final String firstLabel;
  final String secondLabel;
  final VoidCallback onPress;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return isExpanded ? Expanded(
      child: RichText(
        text: TextSpan(
          text: firstLabel,
          style: context.txtTheme.bodySmall,
          children: <TextSpan>[
            TextSpan(
              text: " $secondLabel",
              style: context.txtTheme.bodySmall?.copyWith(
                  color: !themeManager.isDarkMode(context)
                      ? AppLightColors.primaryColor
                      : AppDarkColors.primaryColor
              ),
              recognizer: TapGestureRecognizer()..onTap = onPress
            ),
          ],
        ),
      ),
    ) : RichText(
      text: TextSpan(
        text: firstLabel,
        style: context.txtTheme.bodySmall,
        children: <TextSpan>[
          TextSpan(
              text: " $secondLabel",
              style: context.txtTheme.bodySmall?.copyWith(
                  color: !themeManager.isDarkMode(context)
                      ? AppLightColors.primaryColor
                      : AppDarkColors.primaryColor
              ),
              recognizer: TapGestureRecognizer()..onTap = onPress
          ),
        ],
      ),
    );
  }
}
