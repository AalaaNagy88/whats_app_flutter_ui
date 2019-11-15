import 'package:flutter/material.dart';

class whatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _whatsAppHomeState();
  }
}

}
class _whatsAppHomeState extends State<whatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
      ),
    );
  }

}