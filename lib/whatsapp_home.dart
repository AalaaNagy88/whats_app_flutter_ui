import 'package:flutter/material.dart';

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
      body: Container(),
    );
  }
}