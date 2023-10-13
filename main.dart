import 'package:flutter/material.dart';

class hello_world extends StatelessWidget {
  const hello_world({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Flutter Pertama",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
        ),
        body: const Center(
          child: Text("Bapak Sepyan"),
        ),
      ),
    );
  }
}
