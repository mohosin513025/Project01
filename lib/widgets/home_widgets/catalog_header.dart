import 'package:flutter/material.dart';
import 'package:project_01/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Project01Header extends StatelessWidget {
  // const Project01Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Project 01".text.xl4.bold.color(MyTheme.darkbluishColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
