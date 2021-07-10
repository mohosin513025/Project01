import 'package:flutter/material.dart';
import 'package:project_01/models/catalog.dart';
import 'package:project_01/widgets/drawer.dart';
import 'package:project_01/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int project = 01;
    final String name = "mohosin akhan";
    final dummyList = List.generate(6, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Project 01",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          // itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
              // item: CatalogModel.items[index],
            );
          },
        ),
      ),
      // Center(
      //   child: Container(
      //     child: Text("Welcome to Project $project by $name"),
      //   ),
      // ),
      drawer: MyDrawer(),
    );
  }
}
