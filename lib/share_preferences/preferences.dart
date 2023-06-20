import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // -- -- -- -- Name Preferences
  static String get name {
    return _prefs.getString('nick') ?? _name;
  }
  static set name(String name) {
    _name = name;
    _prefs.setString('name', name);
  }

  // -- -- -- -- isDarkMode
  static bool get darkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set darkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool('isDarkMode', value);
  }

  // -- -- -- -- Gender
  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int value) {
    _gender = value;
    _prefs.setInt('gender', value);
  }
}
