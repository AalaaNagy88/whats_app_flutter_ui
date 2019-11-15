import 'package:flutter/material.dart';
import 'package:whats_app_flutter_ui/models/chat_model.dart';
class ChatScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen>{
  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: dummyData.length,
       itemBuilder: (context,i)=>Column(
         children: <Widget>[
           Divider(height:10),
           ListTile(
             leading: CircleAvatar(
               backgroundImage: NetworkImage(dummyData[i].avatarUrl),
             ),
             title: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text(dummyData[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
                 Text(dummyData[i].time,style: TextStyle(color: Colors.grey,fontSize: 14),),
               ],
             ),
             subtitle: Container(
               padding: const EdgeInsets.only(top: 5),
               child: Text(dummyData[i].message,style: TextStyle(color: Colors.grey,fontSize: 15),)
             ),
           )
         ],
       )
       );
  }

}
