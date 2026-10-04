import 'package:flutter/material.dart';

class Thirdpage extends StatelessWidget {
  const Thirdpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Center(child: Text("3", style: TextStyle(fontSize: 40))),
          ElevatedButton(onPressed: () {}, child: Text("tap")),
        ],
      ),
    );
  }
}
