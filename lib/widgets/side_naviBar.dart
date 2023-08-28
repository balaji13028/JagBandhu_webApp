import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/controllers/side_navBar_controller.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';
import 'package:jagbandhu_web_app/helpers/responsive_widget.dart';

import '../helpers/assests_acess.dart';

class SideNaviBar extends StatelessWidget {
  final Size size;
  SideNaviBar({super.key, required this.size});

  final sidecontroller = Get.put(SideNaviBarController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsAcess().assetLogos('logo_white.png'),
                  width: ResponsiveWidget.isMobile(context)
                      ? size.width * 0.11
                      : size.width * 0.045,
                ),
                const SizedBox(width: 10),
                Text('JagBandhu',
                    style: TextStyle(
                      fontSize: ResponsiveWidget.isMobile(context)
                          ? size.width * 0.05
                          : size.width * 0.018,
                      color: Colors.white,
                    )),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: sidecontroller.sideOptions.length,
                itemBuilder: ((context, index) {
                  var options = sidecontroller.sideOptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Obx(() => ListTile(
                          onTap: () => sidecontroller.navigateToOptions(index),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          selected: sidecontroller.onSelect[index],
                          selectedTileColor: AppColors.textFieldColor,
                          hoverColor: AppColors.textFieldColor,
                          horizontalTitleGap: 2,
                          leading: Icon(
                            options['icon'],
                            color: Colors.white,
                            size: 32,
                          ),
                          title: Text(
                            options['category'],
                            style: const TextStyle(
                              letterSpacing: 0.9,
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
