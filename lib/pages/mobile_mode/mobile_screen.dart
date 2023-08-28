import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/controllers/side_navBar_controller.dart';
import 'package:jagbandhu_web_app/widgets/side_naviBar.dart';
import 'package:jagbandhu_web_app/widgets/top_bar.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({super.key});

  final SideNaviBarController sideController = Get.put(SideNaviBarController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: sideController.scaffoldKey,
      appBar: TopBar(drawerKey: sideController.scaffoldKey),
      drawer: SideNaviBar(size: size),
    );
  }
}
