import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  const ResponsiveUI({
    super.key,
    required this.mobileView,
    required this.tabletView,
  });

  final Widget mobileView;
  final Widget tabletView;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                return mobileView;
              } else {
                return tabletView;
              }
            },
          );
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 950) {
                return mobileView;
              } else {
                return tabletView;
              }
            },
          );
        }
      },
    );
  }
}
