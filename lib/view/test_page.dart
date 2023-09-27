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
      body: Center(
        child: MaterialButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('home')),
      ),
    );
  }
}
