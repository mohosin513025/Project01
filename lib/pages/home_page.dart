import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_01/models/catalog.dart';
import 'package:project_01/utilis/routes.dart';
import 'package:project_01/widgets/home_widgets/catalog_header.dart';
import 'package:project_01/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

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
    await Future.delayed(Duration(seconds: 3));
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
      // backgroundColor: MyTheme.lightBluishColor,
      backgroundColor: context.cardColor,
      // backgroundColor: Theme.of(context).cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        // backgroundColor: MyTheme.darkbluishColor,
        backgroundColor: context.theme.buttonColor,
        child: Icon(CupertinoIcons.cart, color: Colors.white),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Project01Header(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                Project01List().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
