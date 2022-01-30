import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int day = 4;
    return Scaffold(
      appBar: AppBar(
        title: const Text("FirstApp"),
      ),
      body: Center(
        child: Container(
          child: const Text("This is my First App Day ${day}"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
