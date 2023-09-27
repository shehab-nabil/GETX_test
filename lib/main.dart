import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/locale.dart';
import 'package:getx/core/localization/local.dart';
import 'package:getx/core/routes.dart';
import 'package:getx/core/services/setting_services.dart';
// import 'package:getx/view/counter_screen.dart';
// import 'package:getx/view/home_screen.dart';

void main() async {
  await initServices();
  runApp(const MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() => SettingServices().init());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: controller.memoryLang(),
      translations: Locale(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      // home: const CounterScreen()
      // const HomeScreen(title: '')
    );
  }
}
