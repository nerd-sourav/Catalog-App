import 'dart:convert';
import 'package:eighthours/models/catalog.dart';
import 'package:eighthours/widgets/drawer.dart';
import 'package:eighthours/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final catlogJson = await rootBundle.loadString('assets/files/catalog.json');
    final decodedJson = jsonDecode(catlogJson);
    var productData = decodedJson["products"];
    CatalogModal.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModal.items != null && CatalogModal.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModal.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModal.items[index]);
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
