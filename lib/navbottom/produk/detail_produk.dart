import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/chat.dart';
// ignore: unused_import
import 'package:ngebanten/navbottom/produk.dart';

import '../navbottom.dart';

class DetailProduk extends StatefulWidget {
  const DetailProduk({ Key? key }) : super(key: key);

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Canang Sari"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return const BottomNav();
            }));
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Card(
          child: Column(
          children: [
          Stack(
            children: [
               Image.asset('assets/img/canang sari.jpeg',
               height: 240,
               fit: BoxFit.cover,
               )
             ],
            ),
            const SizedBox(height: 8,),
            Padding(padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text('Rp. 10.000', style: TextStyle(fontSize: 16),),
            ),
            const SizedBox(height: 8,),
            Padding(padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', style: TextStyle(fontSize: 12),
              )
            ),
            const SizedBox(height: 8,),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(onPressed: (() {
                  
                }), 
                icon: const Icon(Icons.add_shopping_cart), 
                label: const Text("Checkout"))
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton.icon(onPressed: (() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return const ChatPage();
                  }));
                }),
                icon: const Icon(Icons.chat), 
                label: const Text("Hubungi Penjual"))
              ],
            ),
          ],
        )
        ),
      ),
    );
  }
}