import 'package:flutter/material.dart';
import 'package:gossip_mon/constants/colors.dart';
import 'package:gossip_mon/responsive/responsive_layout.dart';
import 'package:gossip_mon/screens/mobile_layout.dart';
import 'package:gossip_mon/screens/web_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: ResposiveLayout(
          MobileLayout: const MobileLayout(), WebLayout: const WebLayout()),
    );
  }
}
