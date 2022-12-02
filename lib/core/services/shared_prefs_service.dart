import 'package:shared_preferences/shared_preferences.dart';
import 'package:wakke_manager_v2/core/interfaces/local_storage_interface.dart';

class SharedPrefsService implements ILocalStorage {
  final prefs = SharedPreferences.getInstance();

  @override
  Future<bool> remove(String key) async {
    final prefs = await this.prefs;
    return prefs.remove(key);
  }

  @override
  Future<bool> clear() async {
    final prefs = await this.prefs;
    return prefs.clear();
  }

  @override
  Future<bool> containsKey(String key) async {
    final prefs = await this.prefs;
    return prefs.containsKey(key);
  }

  @override
  Future<String> getString(String key, [String defaulValue = '']) async {
    final prefs = await this.prefs;
    return (prefs.getString(key)) ?? defaulValue;
  }

  @override
  Future<bool> setString(String key, String value) async {
    final prefs = await this.prefs;
    return prefs.setString(key, value);
  }

  @override
  Future<bool> setBool(String key, bool value) async {
    final prefs = await this.prefs;
    return prefs.setBool(key, value);
  }

  @override
  Future<bool> getBool(String key, [bool defaulValue = false]) async {
    final prefs = await this.prefs;
    return (prefs.getBool(key)) ?? defaulValue;
  }

  @override
  Future<bool> setInt(String key, int value) async {
    final prefs = await this.prefs;
    return prefs.setInt(key, value);
  }

  @override
  Future<int> getInt(String key, [int defaulValue = 0]) async {
    final prefs = await this.prefs;
    return (prefs.getInt(key)) ?? defaulValue;
  }

  @override
  Future<bool> setDouble(String key, double value) async {
    final prefs = await this.prefs;
    return prefs.setDouble(key, value);
  }

  @override
  Future<double> getDouble(String key, [double defaulValue = 0.0]) async {
    final prefs = await this.prefs;
    return (prefs.getDouble(key)) ?? defaulValue;
  }

  @override
  Future<bool> setStringList(String key, List<String> value) async {
    final prefs = await this.prefs;
    return prefs.setStringList(key, value);
  }

  @override
  Future<List<String>> getStringList(String key,
      [List<String> defaulValue = const []]) async {
    final prefs = await this.prefs;
    return (prefs.getStringList(key)) ?? defaulValue;
  }

  @override
  Future<Set<String>> getKeys() async {
    final prefs = await this.prefs;
    return prefs.getKeys();
  }
}
