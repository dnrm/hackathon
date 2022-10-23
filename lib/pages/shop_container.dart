import 'package:flutter/material.dart';

class ShopContainer extends StatelessWidget {
  final String cantidad;
  final String costo;
  const ShopContainer({Key? key, required this.cantidad, required this.costo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(
                    50,
                  ), // Image radius
                  child: Image.asset(
                    'images/coin.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              children: [
                Text(
                  cantidad,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  costo,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 7),
        GestureDetector(
          child: Container(
            width: 150,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xFF78ACC9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: TextButton(
                child: const Text(
                  'Buy',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}
