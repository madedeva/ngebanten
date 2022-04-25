// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ngebanten/navbottom/detail_home.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return CustomScrollView(
  primary: false,
  slivers: <Widget>[
    SliverPadding(
      padding: const EdgeInsets.all(30),
      sliver: SliverGrid.count(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 1,
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Raya Saraswati'),
                  subtitle: Text(
                    'Greyhound divisively hello..',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/img/caru.jpeg'),
                  width: 150,
                  height: 150,
                ),
              ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color.fromARGB(255, 0, 125, 214),
                      onPressed: () {
                        // Perform some action
                      },
                      child: TextButton.icon(
                        onPressed: (() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const DetailHome();
                          }));
                        }), 
                        icon: const Icon(Icons.info_outline), 
                        label: const Text("Selengkapnya")
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Raya Galungan'),
                  subtitle: Text(
                    'Greyhound divisively hello..',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/img/caru.jpeg'),
                  width: 150,
                  height: 150,
                ),
              ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color.fromARGB(255, 0, 125, 214),
                      onPressed: () {
                        // Perform some action
                      },
                      child: TextButton.icon(
                        onPressed: (() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const DetailHome();
                          }));
                        }), 
                        icon: const Icon(Icons.info_outline), 
                        label: const Text("Selengkapnya")
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Raya Siwaratri'),
                  subtitle: Text(
                    'Greyhound divisively hello..',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/img/caru.jpeg'),
                  width: 150,
                  height: 150,
                ),
              ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color.fromARGB(255, 0, 125, 214),
                      onPressed: () {
                        // Perform some action
                      },
                      child: TextButton.icon(
                        onPressed: (() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const DetailHome();
                          }));
                        }), 
                        icon: const Icon(Icons.info_outline), 
                        label: const Text("Selengkapnya")
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Raya Nyepi'),
                  subtitle: Text(
                    'Greyhound divisively hello..',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/img/caru.jpeg'),
                  width: 150,
                  height: 150,
                ),
              ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color.fromARGB(255, 0, 125, 214),
                      onPressed: () {
                        // Perform some action
                      },
                      child: TextButton.icon(
                        onPressed: (() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const DetailHome();
                          }));
                        }), 
                        icon: const Icon(Icons.info_outline), 
                        label: const Text("Selengkapnya")
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: const Text('Hari Raya Tumpek Landep'),
                  subtitle: Text(
                    'Greyhound divisively hello..',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/img/caru.jpeg'),
                  width: 150,
                  height: 150,
                ),
              ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color.fromARGB(255, 0, 125, 214),
                      onPressed: () {
                        // Perform some action
                      },
                      child: TextButton.icon(
                        onPressed: (() {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return const DetailHome();
                          }));
                        }), 
                        icon: const Icon(Icons.info_outline), 
                        label: const Text("Selengkapnya")
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ],
);
  }
}