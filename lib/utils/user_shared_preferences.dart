import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  static SharedPreferences? _preferences;

  // create variable username & password
  static const String _username = 'username';
  static const String _password = 'password';

  // init
  static Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // setter
  static Future setAuth({
    required String username,
    required String password,
  }) async {
    await _preferences!.setString(_username, username);
    await _preferences!.setString(_password, password);
  }

  // getter
  static String? getUsername() => _preferences!.getString(_username);
  static String? getPassword() => _preferences!.getString(_password);
}
