import 'package:chat/model/Chatmodel.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart(ChatModel chat, {super.key,required this.chatModel});
 final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap:  (){},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 20,
            child: Icon(Icons.person_outlined,color: Colors.white,),
            backgroundColor: Colors.blueGrey,
            ),
            title: Text(chatModel.name),
            subtitle: Row(
              children: [
                Icon(Icons.done_all ),
                Text("call karo"),
              ],
            ),
            trailing: Text("12:03"),
          ),
          Divider(thickness: 1,)
        ],
      ),
    );
  }
}