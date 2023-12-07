import 'package:flutter/material.dart';

class MartItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemPath;
  final Color;

  const MartItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.itemPath,
    required this.Color,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
