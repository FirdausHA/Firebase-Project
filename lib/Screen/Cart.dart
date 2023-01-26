import 'package:flutter/material.dart';
import 'package:project_firebase/Widget/Cart_product.dart';
import 'package:project_firebase/Widget/Cart_total.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("You Cart")),
      body: Column(
        children: [
          CartProduct(),
          cartTotal(),
        ],
      ),
    );
  }
}
