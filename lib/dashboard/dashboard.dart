import 'package:developer_messenger/chatbox/ChatBox.dart';
import 'package:developer_messenger/dashboard/Components/chat_list_tile.dart';
import 'package:developer_messenger/dashboard/model/chat_user.dart';
import 'package:developer_messenger/models/user.dart';
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
    return SafeArea(
        child: ListView.builder(
            itemCount: 6,
            itemBuilder: (buildContext, index) {
              return ChatListTile(
                key: ValueKey(index),
                chatUser: ChatUser("last message", DateTime.now(),
                    User("name", "userId", "", "", "")),
                onTab: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ChatBox())),
              );
            }));
  }
}
