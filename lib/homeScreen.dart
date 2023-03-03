// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:republicacelular/responsive/desktop_layout.dart';
import 'package:republicacelular/responsive/movil_layout.dart';
import 'package:republicacelular/responsive/responsive_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      movilLayout: MovilLayout(),
      desktopLayout: DesktopLayout(),
    );
  }
}
