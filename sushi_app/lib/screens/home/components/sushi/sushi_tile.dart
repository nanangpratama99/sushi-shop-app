import 'package:flutter/material.dart';

import '../../../../models/sushi_food_model.dart';

class SushiTile extends StatelessWidget {
  final Sushi sushi;
  const SushiTile({super.key, required this.sushi});

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
            sushi.imagePath,
            width: 130,
          ),

          // text
          Text(
            sushi.name,
            style: const TextStyle(fontSize: 20),
          ),

          // price + rating
          Row(
            children: [
              Text(
                sushi.price,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(width: 50),
              Text(
                sushi.rating,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
