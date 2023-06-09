 import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter_catalog/widgets/themes.dart';
 import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
 class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :assert(catalog!=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl4.red800.make(),
                    AddToCart(catalog: catalog,).wh(120, 50)
                  ],
                ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: SingleChildScrollView(
                  child: Container(
                    color: context.cardColor,
                    width: context.screenWidth,
                    child: Column(children: [
                      catalog.name.text.color(Color.fromARGB(255, 31, 2, 99)).bold.xl4.make(),
                      catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                      10.heightBox,
                      "dummy text dummy dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy text dummy textdummy textdummy textdummy textdummy textdummy textdummy textdummy textdummy text"
                      .text
                      .textStyle(context.captionStyle)
                      .make()
                      .p(16),
                  ],
                  ).py(64)
                  ),
                ),
              ) 
            ),
         ]
        ),
      ),
    );
  }
}