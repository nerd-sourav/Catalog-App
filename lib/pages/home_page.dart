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
  final dummmyList = List.generate(20, (index) => CatalogModal.items[0]);
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catlogJson = await rootBundle.loadString('assets/files/catalog.json');
    final decodedJson = jsonDecode(catlogJson);
    var productData = decodedJson["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: dummmyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummmyList[index]);
        },
      ),
    );
  }
}
