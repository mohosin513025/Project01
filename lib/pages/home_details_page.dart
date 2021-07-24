import 'package:flutter/material.dart';
import 'package:project_01/models/catalog.dart';
import 'package:project_01/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      // backgroundColor: MyTheme.creamColor,
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl3.red700.make(),
            AddToCart(catalog: catalog)
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ButtonStyle(
            //       backgroundColor:
            //           MaterialStateProperty.all(context.theme.buttonColor),
            //       shape: MaterialStateProperty.all(
            //         StadiumBorder(),
            //       )),
            //   child: "Add to cart".text.make(),
            // ).wh(120, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
                child: VxArc(
              height: 30,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.cardColor,
                child: Column(
                  children: [
                    catalog.name.text.xl3.bold
                        .color(context.accentColor)
                        .make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.text"
                        .text
                        .textStyle(context.captionStyle)
                        .make()
                        .p16(),
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
