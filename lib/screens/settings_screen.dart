import 'package:flutter/material.dart';
import 'package:user_preference/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {

  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('Hi'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}