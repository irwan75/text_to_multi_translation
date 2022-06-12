import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final Widget? smartphoneView;
  final Widget? tabletView;
  final Widget? desktopView;

  const BasePage({
    Key? key,
    this.smartphoneView,
    this.tabletView,
    this.desktopView,
  }) : super(key: key);

  // final Environment _environment = Get.find<Environment>();

  @override
  Widget build(BuildContext context) {
    // SizePlatform? sizePlatform = _environment.getEnvironment.sizePlatform;
    // if (sizePlatform == null) {
    //   _environment.getEnvironment.sizePlatform = SizePlatform(
    //     maxWidthSmartphone: 481,
    //     maxWidthTablet: 1024,
    //   );
    // }
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 481) {
          return smartphoneView ?? Container();
        } else if (constraints.maxWidth < 1024) {
          return tabletView ?? Container();
        } else {
          return desktopView ?? Container();
        }
      },
    );
  }
}
