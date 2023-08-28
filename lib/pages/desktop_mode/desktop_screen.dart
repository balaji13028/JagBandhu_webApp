import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';
import 'package:jagbandhu_web_app/widgets/side_naviBar.dart';
import 'package:jagbandhu_web_app/widgets/top_bar.dart';

import '../../controllers/side_navBar_controller.dart';

class DeskTopScreen extends StatelessWidget {
  DeskTopScreen({super.key});
  final SideNaviBarController sideController = Get.put(SideNaviBarController());
  @override
  Widget build(BuildContext context) {
    Size szie = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(child: SideNaviBar(size: szie)),
          Expanded(
              flex: 5,
              child: Container(
                color: AppColors.secondaryColor,
                child: Column(
                  children: [
                    TopBar(drawerKey: sideController.scaffoldKey),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
