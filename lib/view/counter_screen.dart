import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    CounterController controller =
        Get.put(CounterController(), permanent: true);
    return Scaffold(
      body: Center(
        // child: GetBuilder<CounterController>(
        // child: GetX<CounterController>(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                controller.increment();
              },
              icon: const Icon(Icons.add),
            ),
            GetBuilder<CounterController>(
                builder: (controller) => Text('${controller.counter.value}')),
            IconButton(
              onPressed: () {
                controller.decrement();
              },
              icon: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
