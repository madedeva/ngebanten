// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ngebanten/main.dart';
import 'package:ngebanten/navbottom/chat_room.dart';
import 'package:ngebanten/navbottom/keranjang.dart';
import 'package:ngebanten/navbottom/pesanan.dart';
import 'package:ngebanten/navbottom/toko.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profil extends StatefulWidget {
  const Profil({ Key? key }) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
              return const HomePage();
              }));
            }, 
            icon: const Icon(Icons.logout_outlined, color: Colors.red,), 
            label: const Text("Keluar", style: TextStyle(color: Colors.red),))
        ],
      ),
      body: 
        Center(
          child: Column(
            children: <Widget> [
              const Padding(padding: EdgeInsets.only(
                top: 30,
              )),
              
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey, offset: Offset(0,2))]
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/ngebanten-bg.png'),
                  radius: 40,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0)
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Column(
                      children: const [
                        Padding(padding: EdgeInsets.only(top: 15)),
                        Text("Putri Anggarini",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                        ),
                        Text("putanggrn_")
                      ],//children
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: const [
                        Text("Ni Kadek Putri Anggarini. Menjual perlengkapan banten di seputaran Kota Gianyar."),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    Row(
                      children: const [
                        Chip(
                          label: Text ('Edit Profil'),
                          labelStyle: TextStyle(
                            color: Colors.lime,
                          ),
                          backgroundColor: Colors.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                              width: 1.3,
                              color: Colors.lime,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20)),
                    Column(
                      children: <Widget> [
                        Row(
                          children: [
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return const Keranjang();
                              }));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.cartShopping, color: Colors.lime,), 
                            label: const Text("Keranjang", style: TextStyle(color: Colors.lime),
                              )
                            ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return const Pesanan();
                              }));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.lime,), 
                            label: const Text("Pesanan", style: TextStyle(color: Colors.lime),
                              )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return const Toko();
                              }));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.building, color: Colors.lime,), 
                            label: const Text("Toko", style: TextStyle(color: Colors.lime),
                              )
                            ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return const ChatRoom();
                              }));
                            }, 
                            icon: const FaIcon(FontAwesomeIcons.message, color: Colors.lime,), 
                            label: const Text("Chat", style: TextStyle(color: Colors.lime),
                              )
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                  ],
                ),
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 0.5,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                ),
            ],
          ),
        )
    );
  }
}