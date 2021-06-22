import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.only(top: 10),
      width: size.width,
      color: Colors.grey,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrangeAccent, width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a message..."),
                    ),
                  ),
                  IconButton(icon: Icon(Icons.attachment), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.add_photo_alternate_outlined),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send), onPressed: () {}),
        ],
      ),
    );
  }
}
