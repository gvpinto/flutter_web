import "package:flutter/material.dart";
import 'package:flutter_web_course/controllers/counter_controller.dart';
import "package:get/get.dart";

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Screen was clicked ${_counterController.counter.value} times"),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Open Other Screen"))
      ],
    ));
  }
}
