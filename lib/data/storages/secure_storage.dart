import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';



@injectable
class SecureStorage {
  final FlutterSecureStorage flutterSecureStorage;

  SecureStorage({
    required this.flutterSecureStorage,
  });

  Future<void> putString({
    required String key,
    required String value,
  }) async {
    return flutterSecureStorage.write(
      key: key,
      value: value,
    );
  }

  Future<String?> getString({
    required String key,
  }) async {
    return flutterSecureStorage.read(
      key: key,
    );
  }

  Future<void> remove({
    required String key,
  }) async {
    return flutterSecureStorage.delete(
      key: key,
    );
  }

  Future<void> removeAll() async {
    return flutterSecureStorage.deleteAll();
  }
}
