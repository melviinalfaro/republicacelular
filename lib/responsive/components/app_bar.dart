import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool _isNavRailVisible = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('República Celular'),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.menu_rounded),
        onPressed: () {
          setState(() {
            _isNavRailVisible = !_isNavRailVisible;
          });
        },
      ),
    );
  }
}
