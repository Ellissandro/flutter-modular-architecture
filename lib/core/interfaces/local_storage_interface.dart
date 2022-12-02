abstract class ILocalStorage {
  Future<bool> remove(String key);

  Future<bool> clear();

  Future<bool> containsKey(String key);

  Future<String> getString(String key, [String defaulValue = '']);

  Future<bool> setString(String key, String value);

  Future<bool> setBool(String key, bool value);

  Future<bool> getBool(String key, [bool defaulValue = false]);

  Future<bool> setInt(String key, int value);

  Future<int> getInt(String key, [int defaulValue = 0]);

  Future<bool> setDouble(String key, double value);

  Future<double> getDouble(String key, [double defaulValue = 0.0]);

  Future<bool> setStringList(String key, List<String> value);

  Future<List<String>> getStringList(String key,
      [List<String> defaulValue = const []]);

  Future<Set<String>> getKeys();
}
