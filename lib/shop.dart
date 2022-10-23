import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hackathon/pages/shop_container.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 100,
          leading: IconButton(
              onPressed: onTap(),
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
          padding:
              const EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shop",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.white38,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  ShopContainer(cantidad: "x50", costo: "\$" + "100"),
                  const SizedBox(width: 40),
                  ShopContainer(cantidad: "x100", costo: "\$" + "150")
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  ShopContainer(cantidad: "x300", costo: "\$" + "200"),
                  const SizedBox(width: 40),
                  ShopContainer(cantidad: "x1000", costo: "\$" + "700")
                ],
              ),
            ],
          ),
        ));
  }

  onTap() {}
}
