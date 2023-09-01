import 'package:flutter/material.dart';
import 'package:sushi_app/constant/colors.dart';
import 'package:sushi_app/models/chip_menu_model.dart';

class ChipMenu extends StatefulWidget {
  final ChipMenuData chipMenuData;
  final int index;

  const ChipMenu({
    Key? key,
    required this.chipMenuData,
    required this.index,
  }) : super(key: key);

  @override
  State<ChipMenu> createState() => _ChipMenuState();
}

const int selectedIndex = 0;

class _ChipMenuState extends State<ChipMenu> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.index);
        setState(() {
          if (selectedIndex == widget.index) {
            selectedIndex = -1; // Deselect if already selected
          } else {
            selectedIndex = widget.index; // Select the current index
          }
        });
      },
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selectedIndex == widget.index
              ? primeryColor.withOpacity(0.8) // Change color if selected
              : primeryColor.withOpacity(0.2),
        ),
        child: Row(
          children: [
            Image.asset(widget.chipMenuData.imageIcon),
            const SizedBox(width: 10),
            Text(
              widget.chipMenuData.name,
              style: TextStyle(
                color: selectedIndex == widget.index
                    ? Colors.white
                    : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
