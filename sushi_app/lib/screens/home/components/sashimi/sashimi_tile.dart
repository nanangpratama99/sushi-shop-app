import 'package:flutter/material.dart';

import '../../../../models/sashimi_food_model.dart';

class SashimiTile extends StatelessWidget {
  final Sashimi sashimi;
  const SashimiTile({super.key, required this.sashimi});

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
            sashimi.imagePath,
            width: 130,
          ),

          // text
          Text(
            sashimi.name,
            style: const TextStyle(fontSize: 20),
          ),

          // price + rating
          Row(
            children: [
              Text(
                sashimi.price,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(width: 50),
              Text(
                sashimi.rating,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
