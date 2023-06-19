import 'package:flutter/material.dart';
import 'package:user_preference/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute:HomeScreen.routerName,
      routes: {
        HomeScreen.routerName     :(_) => const HomeScreen(),
        SettingsScreen.routerName :(_) => const SettingsScreen(),
      },
    );
  }
}