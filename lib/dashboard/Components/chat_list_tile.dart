import 'package:developer_messenger/dashboard/model/chat_user.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatListTile extends StatefulWidget {
  final Function onTab;
  final ChatUser chatUser;
  final Function onLongPressed;

  const ChatListTile({Key key, this.onTab, this.chatUser, this.onLongPressed})
      : super(key: key);

  _ChatListTile createState() => _ChatListTile();
}

class _ChatListTile extends State<ChatListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            foregroundImage: AssetImage("images/chat_image.jpg"),
            radius: 35,
            foregroundColor: Colors.grey,
            backgroundColor: Colors.grey,
          ),
          title: Text(widget.chatUser.name),
          subtitle: Row(
            children: [
              Expanded(child: Text(widget.chatUser.lastMsg)),
              Text(getFormatDate(widget.chatUser.lastMsgTime)),
            ],
          ),
          onTap: widget.onTab,
          onLongPress: widget.onLongPressed,
        ),
        Divider(
          indent: 20,
          endIndent: 15,
          thickness: 2,
          color: Colors.grey,
        )
      ],
    );
  }

  String getFormatDate(DateTime date) => DateFormat("HH:mm a").format(date);
}
