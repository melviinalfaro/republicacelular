import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget movilLayout;
  final Widget desktopLayout;

  const ResponsiveLayout(
      {super.key,
      required this.movilLayout,
      required this.desktopLayout
      });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 576) {
          return movilLayout;
        } else {
          return desktopLayout;
        }
      },
    );
  }
}
