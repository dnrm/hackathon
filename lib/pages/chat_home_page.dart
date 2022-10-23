import 'package:flutter/material.dart';
import 'chat_box_menu.dart';

class ChatHomePage extends StatefulWidget {
  ChatHomePage({Key? key}) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          leading: IconButton(
              onPressed: onPressed,
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: const <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 33,
              child: CircleAvatar(
                radius: 29,
                backgroundImage: AssetImage("images/toby.png"),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Messages",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                  ),
                  color: Colors.white38,
                ),
                child: const TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search messages",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.white38,
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                  child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                  ChatMenuBox(user: "Juan perez", image: 'images/toby.png'),
                  const SizedBox(height: 10),
                ],
              )),
            ],
          ),
        ));
  }
}
