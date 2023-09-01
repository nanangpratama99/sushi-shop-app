import 'package:flutter/material.dart';
import 'package:sushi_app/models/sashimi_food_model.dart';
import 'package:sushi_app/models/sushi_food_model.dart';
import 'package:sushi_app/screens/home/components/chip_menu.dart';
import 'package:sushi_app/screens/home/components/promo_banner.dart';

import '../../../models/chip_menu_model.dart';
import '../../../widgets/search_input.dart';
import 'sushi/sushi_list.dart';
import 'sushi/sushi_tile.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // <-------------- Promo Banner -------------->
          const PromoBanner(),
          const SizedBox(height: 10),
          // <-------------- Search Input -------------->
          const SearchInput(),
          // <-------------- Chip Menu -------------->
          const SizedBox(height: 10),

          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: chipMenuItem.length,
              itemBuilder: (context, index) {
                return ChipMenu(
                  chipMenuData: chipMenuItem[index],
                  index: index, // Pass the current index to the ChipMenu widget
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Sashimi",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(height: 20),
          // <-------------- Slide Menu Sushi -------------->
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: SushiMenu.length,
              itemBuilder: (context, index) {
                return SushiTile(
                  sushi: SushiMenu[index],
                );
              },
            ),
          ),

          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Sushi Menu",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // <-------------- List Menu Sushi -------------->
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: SushiMenu.length,
            itemBuilder: (context, index) {
              return SushiList(
                sushi: SushiMenu[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
