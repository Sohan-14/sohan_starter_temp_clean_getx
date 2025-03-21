import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/config/app_sizes.dart';
import 'package:sohan_flutter_template/core/enums/general_type.dart';
import 'package:sohan_flutter_template/core/extensions/context_extensions.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/core/utils/helper_method.dart';
import 'package:sohan_flutter_template/core/widgets/custom_app_bar.dart';
import 'package:sohan_flutter_template/presentation/controllers/general_controller.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GeneralType generalType = Get.arguments as GeneralType;
    final GeneralController generalController = Get.find<GeneralController>();
    final ThemeManager themeManager = Get.find<ThemeManager>();

    return Scaffold(
      backgroundColor: !themeManager.isDarkMode(context) ? AppLightColors.whiteColor : AppDarkColors.whiteColor,
      appBar: CustomAppBar(title: HelperMethod.getGeneralTitleByType(generalType)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.xl),
        child: Text(
            'Lorem ipsum dolor sit amet consectetur. Ultrices id feugiat venenatis habitant mattis viverra elementum purus volutpat. Lacus eu molestie pulvinar rhoncus integer proin elementum. Pretium sit fringilla massa tristique aenean commodo leo. Aliquet viverra amet sit porta elementum et pellentesque posuere. Ullamcorper viverra tortor lobortis viverra auctor egestas. Nulla condimentum ac metus quam turpis gravida ut velit. Porta justo lacus consequat sed platea. Ut dui massa quam elit faucibus consectetur sapien aenean auctor. Felis ipsum amet justo in. Netus amet in egestas sed auctor lorem. Justo ullamcorper velit habitasse lorem eu arcu. Non enim a elit urna eget nibh quisque donec condimentum. Elit ut pellentesque neque in quis at viverra. Nisl etiam tristique odio eget convallis.',
            style: context.txtTheme.titleMedium,
            textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
