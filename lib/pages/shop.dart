import 'package:flutter/material.dart';
import 'package:hackathon/pages/shop_container.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Shop",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Colors.white,
              letterSpacing: -1.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: const [
              ShopContainer(
                cantidad: "50",
                costo: "100",
              ),
              ShopContainer(
                cantidad: "50",
                costo: "150",
              ),
              ShopContainer(
                cantidad: "300",
                costo: "200",
              ),
              ShopContainer(
                cantidad: "1000",
                costo: "700",
              )
            ],
          ),
        )
      ],
    ));
  }

  onTap() {}
}
