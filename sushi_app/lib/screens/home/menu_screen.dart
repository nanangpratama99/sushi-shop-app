import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/body.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: BuildAppbar(),
      body: const Body(),
    );
  }

  AppBar BuildAppbar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(
        Icons.menu,
        color: Colors.black54,
        size: 40,
      ),
      title: Text(
        "Sushi",
        style: GoogleFonts.dmSerifDisplay(color: Colors.black87, fontSize: 30),
      ),
    );
  }
}
