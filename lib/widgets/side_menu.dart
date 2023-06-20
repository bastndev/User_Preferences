import 'package:flutter/material.dart';
import 'package:user_preference/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.teal,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        // --- --- --- -- --- DrawerHeader !
        const _DrawerHeader(),
        // === === Home === ===
          ListTile(
            iconColor: Colors.white,
            leading: const Icon(Icons.home),
            title: const Text('Home',style: TextStyle(color: Colors.white),),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
        // === === People === ===
          ListTile(
            iconColor: Colors.white,
            leading: const Icon(Icons.people),
            title: const Text('People',style: TextStyle(color: Colors.white),),
            onTap: (){

            },
          ),
          // === === Setting === ===
          ListTile(
            iconColor: Colors.white,
            leading: const Icon(Icons.settings),
            title: const Text('Settings',style: TextStyle(color: Colors.white),),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          ),
        ],
      ),
    );
  }
}

// --- --- --- -- --- DrawerHeader !
class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          // --- --- --- -- Miku APk
          image: AssetImage('assets/img/on1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(),
    );
  }
}
