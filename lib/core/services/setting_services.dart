import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferances;

  Future<SettingServices> init() async {
    sharedPreferances = await SharedPreferences.getInstance();
    return this;
  }
}
