import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Shop',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: -1.5,
            ),
          ),
        ],
      ),
    );
  }
}
