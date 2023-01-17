import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen two'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Back to Screen'),
        ),
      ),
    );
  }
}
