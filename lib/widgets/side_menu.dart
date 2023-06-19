import 'package:flutter/material.dart';
import 'package:user_preference/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

        const _DrawerHeader(),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),

          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('People'),
            onTap: (){

            },
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

// --- --- --- -- --- DrawerHeader
class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/menu-img.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child: Container(),
    );
  }
}
