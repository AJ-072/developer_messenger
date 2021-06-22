import 'package:developer_messenger/models/user.dart';

class ChatUser extends User {
  final String lastMsg;
  final DateTime lastMsgTime;

  ChatUser(this.lastMsg, this.lastMsgTime, User user)
      : super(user.name, user.uid, user.photoUrl, user.email, user.phoneNum);
}
