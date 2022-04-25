import 'package:flutter/material.dart';

import 'navbottom.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({ Key? key }) : super(key: key);

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Chat Room"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
            return const BottomNav();
            }));
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
      padding: const EdgeInsets.all(8),
      children: const <Widget>[
        ListTile(
          title: Text("Putri Anggarini"),
          subtitle: Text("Canang nya ready?"),
          leading: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
        ),
      ],
      ),
    );
  }
}