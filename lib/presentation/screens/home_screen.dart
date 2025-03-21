import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_icons.dart';
import 'package:sohan_flutter_template/core/widgets/custom_nav_bar.dart';
import 'package:sohan_flutter_template/presentation/controllers/navigation_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController = Get.find<NavigationController>();
    final List<Widget> pages = <Widget>[
      const Center(child: Text('1'),),
      const Center(child: Text('2'),),
      const Center(child: Text('3'),),
      const Center(child: Text('4'),),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Obx(() => pages[navigationController.currentIndex.value]),
      bottomNavigationBar: CustomNavBar(
        items: <NavItem>[
          NavItem(iconPath: AppIcons.cloudIcon, label: '1'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
          NavItem(iconPath: AppIcons.cloudIcon, label: '2'),
        ],
      ),
    );
  }
}
