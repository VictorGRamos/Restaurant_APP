import 'package:flutter/material.dart';

class CheckoutTitle extends StatelessWidget {
  const CheckoutTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 6.0),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        textAlign: TextAlign.start,
      ),
    );
  }
}
