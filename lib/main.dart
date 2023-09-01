import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jagbandhu_web_app/helpers/app_colors.dart';
import 'package:jagbandhu_web_app/layout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        enableLog: false,
        title: 'JagBandhu',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.secondaryColor,
          primarySwatch: Colors.blue,
        ),
        home: const LayoutPage());
  }
}
