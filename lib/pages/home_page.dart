import 'package:flutter/material.dart';
import 'package:project_01/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int project = 01;
    final String name = "mohosin akhan";
    return Scaffold(
      appBar: AppBar(
        title: Text("Project 01"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Project $project by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
