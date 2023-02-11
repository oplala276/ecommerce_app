import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practice_app/models/catalogitems.dart';
import 'package:practice_app/widgets/item_widget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    // final int days = 12;
    // final String name = "Op";
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
