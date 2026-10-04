import 'package:class_practice/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Center(child: Text("2", style: TextStyle(fontSize: 40))),
          ElevatedButton(
            onPressed: () {
              Get.toNamed(RouterName.thirdPage);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (c) => Thirdpage()),
              // );
              // Get.to((c) => Thirdpage());
              // Get.toNamed("/home");
              // Get.offAndToNamed("/home");
              // Get.offAllNamed("/home");
              // Get.back();
            },
            child: Text("tap"),
          ),
        ],
      ),
    );
  }
}
