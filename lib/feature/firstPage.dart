import 'package:class_practice/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("1", style: TextStyle(fontSize: 40))),
          ElevatedButton(
            onPressed: () {
              Get.offAndToNamed(RouterName.secondPage);
            },
            child: Text("tap"),
          ),
        ],
      ),
    );
  }
}
