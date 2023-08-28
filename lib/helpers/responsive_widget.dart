import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;
  final Widget tablet;
  const ResponsiveWidget(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width < 1200;
  }

  // static bool isLaptop(BuildContext context) {
  //   return MediaQuery.of(context).size.width > 850 &&
  //       MediaQuery.of(context).size.width < 950;
  // }

  static bool isDeskTop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: ((context, constraints) {
      if (constraints.maxWidth <= 600) {
        return mobile;
      } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 600) {
        return tablet;
      } else {
        return desktop;
      }
    }));
  }
}
