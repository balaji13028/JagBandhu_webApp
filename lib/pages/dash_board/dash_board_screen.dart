import 'package:flutter/material.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';
import 'package:jagbandhu_web_app/widgets/small_widgets.dart';

class DashBoatdScreen extends StatelessWidget {
  const DashBoatdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Overview',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text(
                    'Maintenace Mode:',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 5),
                  Switch.adaptive(value: false, onChanged: ((value) => true)),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              countDeatilsBox(size, AppColors.darkPinkColor, 'Team Count', 2),
              countDeatilsBox(size, AppColors.darkBlueColor, 'User Count', 108),
              countDeatilsBox(size, AppColors.darkGreenColor, 'User Issues', 1),
              Expanded(
                  child: Container(
                height: size.width * 0.4,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
