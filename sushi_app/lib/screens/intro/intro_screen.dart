import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/constant/colors.dart';

import '../../widgets/custom_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // shop namet
              Text(
                "Sushi",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  wordSpacing: 4,
                ),
              ),

              const SizedBox(height: 40),

              // icon
              Center(
                child: Image.asset(
                  'assets/images/sushi-1.png',
                  width: 250,
                ),
              ),

              const Spacer(flex: 1),
              const SizedBox(height: 25),
              // title
              Text(
                "The Teste of Japanese Foods",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 25),
              // subtitle
              Text(
                "lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum",
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),

              const Spacer(),
              // button
              CustomButton(
                text: 'Get Started',
                onTap: () => Navigator.pushNamed(context, '/menuscreen'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
