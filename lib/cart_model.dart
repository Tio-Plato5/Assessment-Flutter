import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item sale
  final List _shopItems = [
    // [ itemName, itemPrice, imagePath, color ]
    ["Ham Burgers", "50.000", "images/burgers.jpeg", Colors.brown],
    ["Hot Dogs", "45.000", "images/hotdogs.jpg", Colors.amber],
    ["RedVelvet Cake", "20.000", "images/redvelvet.jpg", Colors.red],
    ["Teh Botol", "5.000", "images/teh.jpeg", Colors.green],
  ];

  get shopItems => _shopItems;
}
