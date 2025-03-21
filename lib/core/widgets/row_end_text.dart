import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/extensions/context_extensions.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/core/utils/helper_method.dart';

class RowEndText extends StatelessWidget {
  const RowEndText({
    super.key,
    required this.label,
    this.onPress = HelperMethod.emptyCallback,
  });

  final String label;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final ThemeManager themeManager = Get.find<ThemeManager>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        GestureDetector(
          onTap: onPress,
          child: Text(
            label,
            style: context.txtTheme.labelLarge?.copyWith(
                color: !themeManager.isDarkMode(context)
                    ? AppLightColors.primaryColor
                    : AppDarkColors.primaryColor
            ),
          ),
        )
      ],
    );
  }
}