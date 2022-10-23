import 'dart:ui';

import 'package:flutter/material.dart';

import './pages/chat_box_menu.dart';

class MessageChatBox extends StatefulWidget {
  MessageChatBox({Key? key}) : super(key: key);

  @override
  State<MessageChatBox> createState() => _MessageChatBoxState();
}

class _MessageChatBoxState extends State<MessageChatBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 40, right: 10, left: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: onTap(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                const SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 33,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundImage: AssetImage("images/toby.png"),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Viviana Carrizales Luna",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[],
            )),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFF78ACC9),
                    ),
                  ),
                  width: 330,
                  child: const TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Message",
                      hintStyle: TextStyle(
                        color: Color(
                          0xFF78ACC9,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                    onPressed: onTap(),
                    icon: const Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  onTap() {}
}
