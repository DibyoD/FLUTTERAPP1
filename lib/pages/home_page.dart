import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int day = 3;
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstApp"),
      ),
      body: Center(
        child: Container(
          child: Text("This is my First App Day ${day}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
