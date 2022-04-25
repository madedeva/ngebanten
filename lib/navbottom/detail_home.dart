import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/home.dart';

import 'navbottom.dart';

class DetailHome extends StatefulWidget {
  const DetailHome({ Key? key }) : super(key: key);

  @override
  State<DetailHome> createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Hari Raya Saraswati"),
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
               Image.asset('assets/img/caru.jpeg',
               height: 300,
               fit: BoxFit.cover,
               )
             ],
            ),
            const SizedBox(height: 8,),
            Padding(padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', style: TextStyle(fontSize: 16),
              )
            ),
            const SizedBox(height: 8,),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(onPressed: (() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                  return const BottomNav();
                  }));
                }), child: const Text("Kembali"))
              ],
            )
          ],
        )
        ),
      ),
    );
  }
}