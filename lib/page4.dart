import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 4')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text('Ini BottomSheet'),
                  ),
                );
              },
            );
          },
          child: Text('BottomSheet'),
        ),
      ),
    );
  }
}
