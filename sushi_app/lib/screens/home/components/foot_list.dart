import 'package:flutter/material.dart';

import '../../../models/food_model.dart';

class FoodList extends StatelessWidget {
  final Food food;
  const FoodList({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(
            food.imagePath,
            width: 60,
          ),
          Column(children: [],)
        ],
      ),
    );
  }
}
