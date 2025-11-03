import 'package:shared_preferences/shared_preferences.dart';

class UserInfo {
  static const String userNameKey = 'user_name';

  static Future<void> saveUser(String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(userNameKey, name);
  }

  static Future<String?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }

  static Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(userNameKey);
  }
}
