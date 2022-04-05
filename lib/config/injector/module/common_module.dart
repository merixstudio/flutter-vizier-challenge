import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CommonModule {
  @preResolve // if you need to pre resolve the value
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();
}
