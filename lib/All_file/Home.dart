import 'package:chat/Page/Chatpage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text(
          "Whatsapp Clone",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
         PopupMenuButton<String>(
          color: Colors.white,
          onSelected: (value){
            print(value);
          },
          itemBuilder: (BuildContext context
     
         ){
           return[
            PopupMenuItem(child: Text("New group"),
            value: "New group",),
             PopupMenuItem(child: Text("New broadcast"),
            value: "New broadcast",),
             PopupMenuItem(child: Text("Whatsapp Web"),
            value: "Whatsapp Web",),
             PopupMenuItem(child: Text("Starred messages"),
            value: "Starred messages",),
             PopupMenuItem(child: Text("Settings"),
            value: "Settings",),

          ];
         })
              
        
        
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
         
         
          controller: _controller,
          tabs: [Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: "CHATS",
          ),
          Tab(
            text: "STATUS",
          ),
          Tab(
          
            text: "CALLS",
          ),
          
          
          ],
           unselectedLabelColor: Colors.grey,
           labelStyle: TextStyle(color: Colors.white),
          
        ),
      ),
      body: 
      TabBarView(
        controller: _controller,
        children: [
        Text("camera"),
        CHAT(),
          Text("Status"),
           Text("Call"),
      ],)
    );
  }
}
