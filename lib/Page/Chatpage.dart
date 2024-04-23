import 'package:chat/model/Chatmodel.dart';
import 'package:flutter/material.dart';

import '../coustamui/coustamcart.dart'; // Assuming your custom card widget is defined here

class CHAT extends StatefulWidget {
  const CHAT({Key? key}) : super(key: key);

  @override
  State<CHAT> createState() => _CHATState();
}

class _CHATState extends State<CHAT> {
  List<ChatModel> chats = [
    ChatModel(
        name: "Ratan kumar nag",
        icon: "",
        isGroup: false,
        currentMessage: "Hi Everyone",
        time: "4:00"),
    ChatModel(
        name: "Anjali nag",
        icon: "",
        isGroup: false,
        currentMessage: "Hi Ratan",
        time: "7:00"),
    ChatModel(
        name: "Shiv kumar nag",
        icon: "",
        isGroup: false,
        currentMessage: "Hi Everyone",
        time: "2:00")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF075E54),
        child: Icon(Icons.chat, color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => Cart(chats[index], chatModel:chats[index] ,), // Changed to CoustamCart
      ),
    );
  }
}
