import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/profil.dart';

import 'navbottom.dart';

class Pesanan extends StatelessWidget {
  const Pesanan({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Pesanan"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return const BottomNav();
            }));
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Center(
        child: Text("Body"),
      ),
    );
  }
}