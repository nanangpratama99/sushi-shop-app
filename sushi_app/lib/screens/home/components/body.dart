import 'package:flutter/material.dart';
import 'package:sushi_app/models/food_model.dart';
import 'package:sushi_app/screens/home/components/food_tile.dart';
import 'package:sushi_app/screens/home/components/foot_list.dart';
import 'package:sushi_app/screens/home/components/promo_banner.dart';

import '../../../widgets/search_input.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List foodMenu = [
    Food(
      name: 'Sushi',
      imagePath: 'assets/images/sushi.png',
      rating: '4.3',
      price: '44.00',
    ),
    Food(
      name: 'Sushi',
      imagePath: 'assets/images/sushi-1.png',
      rating: '4.3',
      price: '22.00',
    ),
    Food(
      name: 'Sushi',
      imagePath: 'assets/images/sushi-2.png',
      rating: '4.3',
      price: '11.00',
    ),
    Food(
      name: 'Sushi',
      imagePath: 'assets/images/sushi-3.png',
      rating: '4.3',
      price: '55.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // promo banner
          const PromoBanner(),
          const SizedBox(height: 25),
          // search
          const SearchInput(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(height: 20),
          // <-------------- menu list -------------->
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) {
                return FoodTile(
                  food: foodMenu[index],
                );
              },
            ),
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: foodMenu.length,
            itemBuilder: (context, index) {
              return FoodList(
                food: foodMenu[index],
              );
            },
          ),

          // popular food
        ],
      ),
    );
  }
}
