import 'package:flutter/material.dart';
import 'package:project_01/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  // const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors
            .transparent, // transparent color used for same color as the scafold color has
        title: "My Cart".text.bold.make().centered(),
      ),
    );
  }
}
