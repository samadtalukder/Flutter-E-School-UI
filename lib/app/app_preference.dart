import 'package:get_storage/get_storage.dart';

class AppPreference {
  static setData(String key, String value) {
    var storage = GetStorage();
    storage.write(key, value);
  }

  static getData(String key) {
    var storage = GetStorage();
    return storage.read(key) ?? "";
  }

  static setBooleanData(String key, bool value) {
    var storage = GetStorage();
    storage.write(key, value);
  }

  static getBooleanData(String key) {
    var storage = GetStorage();
    return storage.read(key) ?? false;
  }
}
