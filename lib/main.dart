import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase/modules/homepage.dart';
import 'package:login_firebase/my_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // initialBinding: AppBidding(),
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      home: HomePage(),
    );
  }
}

// class AppBidding implements Bindings {
//   @override
//   void dependencies() {
//     Get.put(Controller());
//   }
// }
