import 'package:flutter/material.dart';
import 'package:jagbandhu_web_app/helpers/responsive_widget.dart';
import 'package:jagbandhu_web_app/pages/desktop_mode/desktop_screen.dart';
import 'package:jagbandhu_web_app/pages/mobile_mode/mobile_screen.dart';
import 'package:jagbandhu_web_app/pages/tablet_mode/tablet_screen.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ResponsiveWidget(
      desktop: DeskTopScreen(),
      mobile: MobileScreen(),
      tablet: TabletScreen(),
    ));
  }
}
