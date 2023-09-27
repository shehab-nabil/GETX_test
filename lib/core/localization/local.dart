import 'package:get/get_navigation/get_navigation.dart';

class Locale extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {'home_page ': 'الصفحة الرئيسية', 'test_page': 'صفحة الاختبار'},
        'en': {'home_page ': 'Home page', 'test_page': 'Test page'}
      };
}
