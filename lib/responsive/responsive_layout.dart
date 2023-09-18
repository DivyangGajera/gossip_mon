// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  ResposiveLayout(
      {super.key, required this.MobileLayout, required this.WebLayout});

  Widget MobileLayout;
  Widget WebLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return MobileLayout;
        } else {
          return WebLayout;
        }
      },
    );
  }
}
