class ChatMsg {
  final String senderId;
  final String sender;
  final String msg;
  final String receiverId;
  final String receiver;
  final DateTime time;

  ChatMsg(this.senderId, this.sender, this.msg, this.receiverId, this.receiver,
      this.time);
}
