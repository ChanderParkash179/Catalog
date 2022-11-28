// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last

import 'dart:convert';

import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/routes.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;

  String courseName = 'Flutter';
  String title = 'Catalog';
  String homeImg = 'assets/imgs/homeImage.png';

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/json/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData("producst");
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, ((index) => CatalogModel().items[0]));
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$title'),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
