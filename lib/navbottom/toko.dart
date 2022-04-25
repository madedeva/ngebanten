import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/profil.dart';

import 'navbottom.dart';

class Toko extends StatelessWidget {
  const Toko ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Toko"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return const BottomNav();
            }));
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        child: GridView.count(crossAxisCount: 2,children: [
          Card(child: 
            Padding(padding:  const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.bottomCenter ,
              child: Text('Produk')),),),
          Card(child: 
            Padding(padding:  const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text('Pesanan')),),),
          Card(child: 
            Padding(padding:  const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text('Penjualan')),),),
          Card(child: 
            Padding(padding:  const EdgeInsets.all(10),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text('Penghasilan')),),),
          /*Card(
            child: Padding(padding: const EdgeInsets.all(10),
            child: 
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(Icons.image),
                ],
              ),
            ),
            ),
          )*/
        ],),
      ),
    );
  }
}