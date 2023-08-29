import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/controllers/side_navBar_controller.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';

import '../helpers/assests_acess.dart';

class SmallSideBar extends StatelessWidget {
  final Size size;
  SmallSideBar({super.key, required this.size});

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
            Image.asset(
              AssetsAcess().assetLogos('logo_white.png'),
              width: size.width * 0.08,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: sidecontroller.sideOptions.length,
                itemBuilder: ((context, index) {
                  var options = sidecontroller.sideOptions[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Obx(() => ListTile(
                        onTap: () => sidecontroller.navigateToOptions(index),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        selected: sidecontroller.onSelect[index],
                        selectedTileColor: AppColors.textFieldColor,
                        hoverColor: AppColors.textFieldColor,
                        title: Column(
                          children: [
                            Icon(
                              options['icon'],
                              color: Colors.white,
                              size: size.height * 0.035,
                            ),
                            Text(
                              options['category'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                          ],
                        ))),
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
