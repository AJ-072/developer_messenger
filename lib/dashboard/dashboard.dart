import 'package:developer_messenger/dashboard/chat_list_item.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.system,
        home: Scaffold(
          appBar: AppBar(
            title: Text("dashboard"),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: ChatList(),
        ));
  }
}

class ChatList extends StatefulWidget {
  @override
  _ChatList createState() => _ChatList();
}

class _ChatList extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      children: [ChatItem(), ChatItem(), ChatItem(), ChatItem()],
    ));
  }
}
