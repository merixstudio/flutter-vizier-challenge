import 'package:injectable/injectable.dart';
import 'package:vizier/data/storages/secure_storage.dart';
import 'package:vizier/data/storages/storage_keys.dart';

@injectable
class TokenStorage {
  final SecureStorage secureStorage;

  TokenStorage({
    required this.secureStorage,
  });

  Future<void> storeAccessToken(String accessToken) {
    return secureStorage.putString(
      key: StorageKeys.accessToken,
      value: accessToken,
    );
  }

  Future<String?> getAccessToken() {
    return secureStorage.getString(
      key: StorageKeys.accessToken,
    );
  }

  Future<bool> hasToken() async {
    final String? accessToken = await getAccessToken();
    return accessToken != null;
  }

  Future<void> removeAccessToken() {
    return secureStorage.remove(
      key: StorageKeys.accessToken,
    );
  }

  Future<void> clear() {
    return Future.wait([
      removeAccessToken(),
    ]);
  }
}
