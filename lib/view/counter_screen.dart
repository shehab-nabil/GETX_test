import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: GetBuilder<CounterController>(
        child: GetX<CounterController>(
          init: CounterController(),
          builder: (CounterController controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: const Icon(Icons.add),
              ),
              Text('${controller.counter.value}'),
              IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
