import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class Storage {
  final SharedPreferences sharedPreferences;

  Storage({
    required this.sharedPreferences,
  });

  Future<bool> putBool({
    required String key,
    required bool value,
  }) async {
    return
      sharedPreferences.setBool(key, value);
  }

  Future<bool?> getBool({
    required String key,
  }) async {
    return sharedPreferences.getBool(key);
  }

  Future<bool> putString({
    required String key,
    required String value,
  }) async {
    return sharedPreferences.setString(key, value);
  }

  Future<String?> getString({
    required String key,
  }) async {
    return sharedPreferences.getString(key);
  }

  Future<bool> putInt({
    required String key,
    required int value,
  }) async {
    return sharedPreferences.setInt(key, value);
  }

  Future<int?> getInt({
    required String key,
  }) async {
    return sharedPreferences.getInt(key);
  }

  Future<bool> putDouble({
    required String key,
    required double value,
  }) async {
    return sharedPreferences.setDouble(key, value);
  }

  Future<double?> getDouble({
    required String key,
  }) async {
    return sharedPreferences.getDouble(key);
  }

  Future<bool> remove({
    required String key,
  }) async {
    return sharedPreferences.remove(key);
  }
}
