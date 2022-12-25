import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_workers/screens/home_screen/binding/home_binding.dart';
import 'screens/home_screen/view/home_view.dart';

void main() => runApp(GetMaterialApp(
      title: 'getx-workers',
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ));
