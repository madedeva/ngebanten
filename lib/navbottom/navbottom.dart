import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/home.dart';
import 'package:ngebanten/navbottom/produk.dart';
import 'package:ngebanten/navbottom/profil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({ Key? key }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int currentIndex = 0;
  final List<Widget> body =[
    const Home(),
    const Produk(),
    const Profil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.white,
        )
      ),
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.house, color: Colors.lime,),
            label: 'Home',
            activeIcon: FaIcon(FontAwesomeIcons.house, color: Colors.lime,)
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cartShopping, color: Colors.lime,),
            label: 'Produk', 
            activeIcon: FaIcon(FontAwesomeIcons.cartShopping, color: Colors.lime,)
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user, color: Colors.lime,),
            label: 'Profil', 
            activeIcon: FaIcon(FontAwesomeIcons.user, color: Colors.lime,)
          ),
        ],
      ),
    );
  }

  void ontap(int index){
    setState(() {
      currentIndex = index;
    });
  }
}