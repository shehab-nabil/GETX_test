import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/core/services/setting_services.dart';

class LocaleController extends GetxController {
  SettingServices services = Get.find();
  void changeLang(String langCode) {
    memoryLang();
    // langCode == 'ar' ? 'en' : 'ar';
    Locale localeCode = Locale(langCode);
    services.sharedPreferances.setString('lang', langCode);
    Get.updateLocale(localeCode);
  }

  Locale? memoryLang() {
    Locale? initLang = services.sharedPreferances.getString('lang') == null
        ? Get.deviceLocale
        : Locale(services.sharedPreferances.getString('lang')!);
    return initLang;
  }

  String memoryLangCode() {
    String langCode = 'en';
    if (services.sharedPreferances.getString('lang') == null ||
        services.sharedPreferances.getString('lang') == 'ar') {
      langCode = 'en';
    } else if (services.sharedPreferances.getString('lang') == 'en') {
      langCode = 'ar';
    }
    return langCode;
  }
}
