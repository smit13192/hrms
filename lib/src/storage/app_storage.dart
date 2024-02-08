import 'package:get_storage/get_storage.dart';

abstract class AppStorageString {
  static const String token = 'token';
  static const String isLogin = 'isLogin';
}

class AppStorage {
  static GetStorage getStorage = GetStorage();

  static Future<void> setToken(String token) async {
    await getStorage.write(AppStorageString.token, token);
  }

  static String? getToken() {
    return getStorage.read<String>(AppStorageString.token);
  }
  
  static Future<void> setLogin(bool token) async {
    await getStorage.write(AppStorageString.isLogin, token);
  }

  static bool? getLogin() {
    return getStorage.read<bool>(AppStorageString.isLogin);
  }
}
