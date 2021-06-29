import 'package:eighthours/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:eighthours/models/catalog.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
      ),
      backgroundColor: (MyTheme.creamColor),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                child: Image.network(catalog.image).h40(context),
                tag: Key(catalog.id.toString())),
            Expanded(
              child: VxArc(
                height: 25,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl4.make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle)
                          .make(),
                    ],
                  ).p64(),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 16),
          children: [
            "\$${catalog.price}".text.bold.xl4.red400.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.xl.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBluish),
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(90, 50)
          ],
        ),
      ).p16(),
    );
  }
}
