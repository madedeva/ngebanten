import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listview_home.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListViewHome(),
    );
  }
}