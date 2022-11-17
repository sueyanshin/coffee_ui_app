import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  // const CoffeeType({super.key});

  final String coffeeType;
  bool isSelected;
  final VoidCallback onTap;

  CoffeeType({
    required this.coffeeType,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Text(
          coffeeType,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
