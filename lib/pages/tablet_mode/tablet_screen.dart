import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/widgets/small_sideBar.dart';

import '../../controllers/side_navBar_controller.dart';
import '../../helpers/app_colors.dart';
import '../../widgets/top_bar.dart';

class TabletScreen extends StatelessWidget {
  TabletScreen({super.key});
  final SideNaviBarController sideController = Get.put(SideNaviBarController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          SizedBox(width: size.width * 0.16, child: SmallSideBar(size: size)),
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
