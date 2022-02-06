import 'package:flutter/material.dart';
import 'package:flutter_app1/models/catalog.dart';
import 'package:flutter_app1/widgets/drawer.dart';
import 'package:flutter_app1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("FirstApp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemView(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
