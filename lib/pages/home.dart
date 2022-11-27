// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, sort_child_properties_last

import 'package:catalog/models/catalog.dart';
import 'package:catalog/widgets/drawer.dart';
import 'package:catalog/widgets/item.dart';
import 'package:flutter/material.dart';
import '../utils/routes.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String courseName = 'Flutter';
  String title = 'Catalog';
  String homeImg = 'assets/imgs/homeImage.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('$title'),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: CatalogModel().items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel().items[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
