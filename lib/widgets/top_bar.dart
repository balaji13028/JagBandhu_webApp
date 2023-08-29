import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';

import '../controllers/side_navBar_controller.dart';
import '../helpers/responsive_widget.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState>? drawerKey;
  const TopBar({super.key, this.drawerKey});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            if (ResponsiveWidget.isMobile(context)) {
              drawerKey?.currentState!.openDrawer();
            } else {
              Get.find<SideNaviBarController>().menuOpend.toggle();
            }
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        title: Row(children: [
          Text(
            'JB-Admin Panel',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.white),
          ),
          const Spacer(),
          const Icon(
            CupertinoIcons.profile_circled,
            color: Colors.white,
            size: 42,
          ),
          const SizedBox(width: 10),
          const Text(
            'Admin',
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: const Icon(
                Icons.logout,
                color: AppColors.primaryColor,
              )),
        ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
