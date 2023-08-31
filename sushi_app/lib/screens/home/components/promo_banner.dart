import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/constant/colors.dart';

import '../../../widgets/custom_button.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: primeryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                "Get 12% Promo",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              CustomButton(
                text: 'Radeem',
                onTap: () {},
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Image.asset(
                "assets/images/sushi-3.png",
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
