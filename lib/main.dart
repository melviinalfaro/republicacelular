import 'package:flutter/material.dart';
import 'package:republicacelular/homeScreen.dart';

void main() {
  runApp(const RepublicaCelular());
}

class RepublicaCelular extends StatelessWidget {
  const RepublicaCelular({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'República Celular',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
