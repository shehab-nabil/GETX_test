import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/locale.dart';
import 'package:getx/core/strings.dart';

class HomeScreen extends StatelessWidget //extends GetView<HomeController> {
{
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                localeController.changeLang(localeController.memoryLangCode());
              },
              icon: const Icon(Icons.translate))
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(Strings.homePage.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  Get.toNamed('/testScreen');
                },
                child: Text(Strings.testPage.tr)),
            const Text(
              'You have pushed the button this many times:',
            ),
            // GetX<HomeController>(
            //   builder: (controller) => Text(
            //     '${controller.counter.value}',
            //     style: Theme.of(context).textTheme.headlineMedium,
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // controller.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
