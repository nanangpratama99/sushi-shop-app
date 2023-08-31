import 'package:flutter/material.dart';

import '../../../models/food_model.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // image
          Image.asset(
            food.imagePath,
            width: 130,
          ),

          // text
          Text(
            food.name,
            style: const TextStyle(fontSize: 20),
          ),

          // price + rating
          Row(
            children: [
              Text(
                food.price,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(width: 50),
              Text(
                food.rating,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
