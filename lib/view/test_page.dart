import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx/core/strings.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.testPage.tr)),
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('home'),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Get.defaultDialog(textCancel: 'cancel');
            },
            child: const Text('show dialog'),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Get.snackbar('title', 'message',
                  snackPosition: SnackPosition.BOTTOM);
            },
            child: const Text('show snackbar'),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              Get.bottomSheet(
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const Text('data'),
                ),
                backgroundColor: Colors.red,
              );
            },
            child: const Text('show bottom sheet'),
          ),
        ],
      ),
    );
  }
}
