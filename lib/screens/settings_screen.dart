import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preference/providers/theme_provider.dart';
import 'package:user_preference/widgets/widgets.dart';
import 'package:user_preference/share_preferences/preferences.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('@bastndev'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w200),
              ),
              // --- --- --- -- --- --- --- Dark Mode
              const Divider(),
              SwitchListTile.adaptive(
                value: Preferences.darkMode,
                title: const Text('Dark Mode'),
                onChanged: (value) {
                  Preferences.darkMode = value;
                  final themeProvider =
                      Provider.of<ThemeProvider>(context, listen: false);

                  value
                      ? themeProvider.setDarkMode()
                      : themeProvider.setLightMode();

                  setState(() {});
                },
              ),
              // --- --- --- -- --- --- --- Male
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  title: const Text('Male'),
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  }),
              // --- -- --- --- --- -- --- ---  Female
              const Divider(),
              RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.gender,
                  title: const Text('Female'),
                  onChanged: (value) {
                    Preferences.gender = value ?? 2;
                    setState(() {});
                  }),
              // --- -- --- --- --- -- ---  Other
              const Divider(),
              RadioListTile<int>(
                  value: 3,
                  groupValue: Preferences.gender,
                  title: const Text('Other'),
                  onChanged: (value) {
                    Preferences.gender = value ?? 3;
                    setState(() {});
                  }),
              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: Preferences.name,
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                      labelText: 'Name', helperText: 'User Name'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
