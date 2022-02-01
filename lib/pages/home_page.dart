import 'package:firstapp/models/catalog.dart';
import 'package:firstapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/widgets/drawer.dart';
class HomePage extends StatelessWidget {
  final int days=90;
  @override
  Widget build(BuildContext context) {
    final DummyList= List.generate(20, (index) => CatalogModels.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount:DummyList.length ,
          itemBuilder: (BuildContext context, index) {
              return ItemWidget(
                  item: DummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

    
    