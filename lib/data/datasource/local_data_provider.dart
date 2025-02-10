import 'package:shared_preferences/shared_preferences.dart';

class LocalDataProvider {
  final SharedPreferences storage;

  LocalDataProvider(this.storage);

  Future<dynamic> readStorage(String key) async {
    String? value = storage.getString(key);
    return value ?? "";
  }

  Future<dynamic> deleteStorage(String key) async {
    await storage.remove(key);
    return;
  }

  Future<dynamic> writeStorage(String key, String value) async {
    await storage.setString(key, value);
    return;
  }

  Future<dynamic> deleteAllStorage() async {
    await storage.clear();
    return;
  }
}
