import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/constant/colors.dart';

import 'components/body.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      backgroundColor: Colors.grey[200],
      appBar: BuildAppbar(context),
      body: const Body(),
      drawer: const BuildDrawer(),
    );
  }

  AppBar BuildAppbar(context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black54,
              size: 40,
            ),
          );
        },
      ),
      title: Text(
        "Sushi",
        style: GoogleFonts.dmSerifDisplay(color: Colors.black87, fontSize: 30),
      ),
    );
  }
}

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primeryColor,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withOpacity(0.5)),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: Colors.white,
                    )),
                const SizedBox(width: 15),
                Text(
                  "Setting",
                  style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const SizedBox(height: 30),
            // profile
            Row(
              children: [
                const CircleAvatar(
                  radius: 33,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/3.jpeg"),
                  ),
                ),
                const SizedBox(width: 15),
                Text(
                  "Adam jr",
                  style: GoogleFonts.dmSerifDisplay(
                      color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const SizedBox(height: 25),
            // divider
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Divider(
                thickness: 3,
                color: Colors.white.withOpacity(0.5),
              ),
            ),

            // list menu

            const BuildListMenu(
              title: "Home",
              icon: Icon(Icons.home),
            ),
            const BuildListMenu(
              title: "Cart",
              icon: Icon(Icons.shopping_bag),
            ),
            const BuildListMenu(
              title: "Pay",
              icon: Icon(Icons.payment),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildListMenu extends StatelessWidget {
  final String title;
  final Icon icon;
  const BuildListMenu({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      iconColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 17),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}
