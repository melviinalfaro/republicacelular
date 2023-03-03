import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:republicacelular/homeScreen.dart';
import 'package:republicacelular/perfilScreen.dart';

void main() {
  runApp(const RepublicaCelular());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/perfil',
      builder: (context, state) => const PerfilScreen(),
    )
  ],
);

class RepublicaCelular extends StatelessWidget {
  const RepublicaCelular({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'República Celular',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      themeMode: ThemeMode.light,
    );
  }
}
