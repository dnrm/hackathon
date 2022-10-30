import 'package:flutter/material.dart';

class ShopContainer extends StatelessWidget {
  final String cantidad;
  final String costo;
  const ShopContainer({Key? key, required this.cantidad, required this.costo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(
          "$cantidad Credits",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: -1,
            fontSize: 20,
          ),
        ),
        leading: const Icon(
          Icons.money,
          color: Color(0xFF78ACC9),
          size: 40,
        ),
        subtitle: Text(
          "\$$costo MXN",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        tileColor: const Color(0xFF2E2E2E),
      ),
    );
  }
}
