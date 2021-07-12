import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_01/models/catalog.dart';
import 'package:project_01/widgets/drawer.dart';
import 'package:project_01/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int project = 01;
  final String name = "mohosin akhan";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    // print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(6, (index) => CatalogModel.items[0]);
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
        padding: const EdgeInsets.all(8.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                // itemCount: dummyList.length,
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  // item: dummyList[index],
                  item: CatalogModel.items[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
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
