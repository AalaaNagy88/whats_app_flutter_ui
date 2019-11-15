import 'package:flutter/material.dart';
import 'package:whats_app_flutter_ui/pages/calls_screen.dart';
import 'package:whats_app_flutter_ui/pages/camera_screen.dart';
import 'package:whats_app_flutter_ui/pages/chat_screen.dart';
import 'package:whats_app_flutter_ui/pages/status_screen.dart';

class whatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _whatsAppHomeState();
  }
}

class _whatsAppHomeState extends State<whatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =new TabController(vsync: this,initialIndex: 1,length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        actions: <Widget>[Icon(Icons.search),Padding(padding: const EdgeInsets.symmetric(horizontal: 0.7),),Icon(Icons.more_vert)],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Calls",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
          children:<Widget>[CameraScreen(),
        ChatScreen(),
        StatusScreen(),
        CallsScreen()
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: ()=>{print("ok")},
      ),
    );
  }
}