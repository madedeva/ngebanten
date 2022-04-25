// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/produk/categoty_item.dart';
import 'package:ngebanten/navbottom/produk/dummy_data.dart';

class Produk extends StatefulWidget {
  const Produk({ Key? key }) : super(key: key);

  @override
  State<Produk> createState() => _ProdukState();
}

class _ProdukState extends State<Produk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              print('Search pressed');
            }, 
            icon: const Icon(Icons.search, color: Colors.lime,), 
            label: const Text("Cari..", style: TextStyle(color: Colors.lime),
             )
            ),
        ],
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((categoryItem) => CategoryItem(
          categoryItem.tittle,
          categoryItem.image,
          categoryItem.color,
        )).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 2/3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        )
      )
    ); 
  }
}