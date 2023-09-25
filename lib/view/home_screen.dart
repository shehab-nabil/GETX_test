import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget //extends GetView<HomeController> {
{
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                onPressed: () {
                  Get.toNamed('/testScreen');
                },
                child: const Text('test page')),
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
