import 'package:flutter/material.dart';

class MovilLayout extends StatefulWidget {
  const MovilLayout({super.key});

  @override
  State<MovilLayout> createState() => _MovilState();
}

class _MovilState extends State<MovilLayout> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            elevation: 0,
            backgroundColor: Colors.white,
            height: 80,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontWeight: FontWeight.w600, color: Color(0XFF101C2B)),
            ),
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined, color: Color(0XFF101C2B)),
                selectedIcon: Icon(Icons.home_rounded, color: Color(0XFF101C2B)),
                label: 'Inicio',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.inventory_2_outlined, color: Color(0XFF101C2B)),
                selectedIcon: Icon(Icons.inventory_2_rounded, color: Color(0XFF101C2B)),
                label: 'Catálogo',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined, color: Color(0XFF101C2B)),
                selectedIcon: Icon(Icons.shopping_bag_rounded, color: Color(0XFF101C2B)),
                label: 'Pedidos',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.local_shipping_outlined, color: Color(0XFF101C2B)),
                selectedIcon: Icon(Icons.local_shipping_rounded, color: Color(0XFF101C2B)),
                label: 'Envíos',
                tooltip: '',
              ),
            ],
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          )),
    );
  }
}
