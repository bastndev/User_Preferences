import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@bastndev'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Dar Mode: ${ Preferences.darkMode}'),
          const Divider(),
          Text('Gender:  ${ Preferences.gender}'),
          const Divider(),
          Text('User Name: ${ Preferences.name} '),
          const Divider(),
        ],
      ),
    );
  }
}
