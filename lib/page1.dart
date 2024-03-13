// page1.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'text_controller.dart';

class Page1 extends StatelessWidget {
  final TextController controller = Get.put(TextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(controller.text.value)),
            ElevatedButton(
              onPressed: () => controller.toggleCase(),
              child: Text('Toggle Case'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page2');
              },
              child: Text('Pergi Ke Halaman 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page3');
              },
              child: Text('Pergi Ke Halaman 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page4');
              },
              child: Text('Pergi Ke halaman 4'),
            ),
          ],
        ),
      ),
    );
  }
}
