import 'package:class_practice/core/route.dart';
import 'package:class_practice/feature/secondPage.dart';
import 'package:class_practice/feature/thirdPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'feature/firstPage.dart';

class RouterName {
  static const firstPage = "/";
  static const secondPage = "/second";
  static const thirdPage = "/third";
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(name: RouterName.firstPage, page: () => Firstpage()),
        GetPage(name: RouterName.secondPage, page: () => SecondPage()),
        GetPage(name: RouterName.thirdPage, page: () => Thirdpage()),
      ],
    );
  }
}
