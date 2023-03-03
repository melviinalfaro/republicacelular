import 'package:flutter/material.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  var selectedIndex = 0;
  bool _isNavigationRailVisible = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            if (_isNavigationRailVisible)
              SafeArea(
                child: NavigationRail(
                  elevation: 2.0,
                  groupAlignment: 0.0,
                  extended: constraints.maxWidth > 820,
                  selectedLabelTextStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF101C2B),
                  ),
                  unselectedLabelTextStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF101C2B),
                  ),
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home_outlined),
                      selectedIcon: Icon(Icons.home_rounded),
                      label: Text('Inicio'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.inventory_2_outlined),
                      selectedIcon: Icon(Icons.inventory_2_rounded),
                      label: Text('Catálogo de productos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.shopping_bag_outlined),
                      selectedIcon: Icon(Icons.shopping_bag_rounded),
                      label: Text('Pedidos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.local_shipping_outlined),
                      selectedIcon: Icon(Icons.local_shipping_rounded),
                      label: Text('Envíos'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                //Contenido de la aplicación
              ),
            ),
          ],
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {});
            },
            child: const Icon(Icons.account_circle_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {});
            },
            child: const Icon(Icons.dark_mode_rounded),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
                _isNavigationRailVisible = !_isNavigationRailVisible;
              });
            },
            child:
                Icon(_isNavigationRailVisible ? Icons.menu_open : Icons.menu),
          ),
        ]),
      );
    });
  }
}
