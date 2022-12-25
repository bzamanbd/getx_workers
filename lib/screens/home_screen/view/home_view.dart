import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_workers/screens/home_screen/controller/home_controller.dart';

class HomeView extends GetView {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text(controller.num.value.toString())),
          ElevatedButton(
            onPressed: () => controller.increment(),
            child: const Text('Click Me'),
          )
        ],
      )),
    );
  }
}
