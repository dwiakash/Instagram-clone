import 'package:flutter/material.dart';
import 'package:instagram/utils/dimensions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;

  const ResponsiveLayoutScreen({
    Key? key,
    required this.webScreenLayout,
    required this.mobileScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return webScreenLayout;
      } else {
        return mobileScreenLayout;
      }
    });
  }
}
