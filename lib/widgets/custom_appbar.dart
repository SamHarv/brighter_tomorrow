import 'package:beamer/beamer.dart';
import 'package:brighter_tomorrow/constants.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import './appbar_menu_item.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    //required this.id,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  final String image = 'images/4.png';

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;

    return AppBar(
      automaticallyImplyLeading: mediaWidth < 750 ? true : false,
      iconTheme: const IconThemeData(
        color: kColor,
        size: 24,
      ),
      backgroundColor: secondaryColor,
      title: Center(
        child: mediaWidth < 750
            ? InkWell(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    image,
                  ),
                  // radius: 100,
                ),

                // Image.asset(
                //   image,
                //   fit: BoxFit.contain,
                //   height: 50.0,
                // ),
                onTap: () => Beamer.of(context).beamToNamed('/'),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppBarMenuItem(
                        title: 'Home',
                        route: '/',
                      ),
                      AppBarMenuItem(
                        title: 'EP Services',
                        route: '/ep',
                      ),
                      AppBarMenuItem(
                        title: 'Mentoring Services',
                        route: '/mentoring',
                      ),
                      // PopupMenuButton<String>(
                      //   color: kColor,
                      //   child: Text(
                      //     'About',
                      //     style: GoogleFonts.newsreader(
                      //       textStyle: const TextStyle(
                      //         fontSize: 20.0,
                      //         color: kColor,
                      //       ),
                      //     ),
                      //   ),
                      //   itemBuilder: (BuildContext context) {
                      //     return [
                      //       PopupMenuItem<String>(
                      //         value: 'about',
                      //         child: Text(
                      //           'About Us',
                      //           style: GoogleFonts.newsreader(
                      //               textStyle: menuStyle),
                      //         ),
                      //       ),
                      //       PopupMenuItem<String>(
                      //         value: 'jas',
                      //         child: Text(
                      //           'Jas',
                      //           style: GoogleFonts.newsreader(
                      //               textStyle: menuStyle),
                      //         ),
                      //       ),
                      //       PopupMenuItem<String>(
                      //         value: 'josh',
                      //         child: Text(
                      //           'Josh',
                      //           style: GoogleFonts.newsreader(
                      //               textStyle: menuStyle),
                      //         ),
                      //       ),
                      //     ];
                      //   },
                      //   onSelected: (value) {
                      //     // Handle the selected item here
                      //     if (value == 'about') {
                      //       Beamer.of(context).beamToNamed('/about');
                      //     } else if (value == 'jas') {
                      //       Beamer.of(context).beamToNamed('/jas');
                      //     } else if (value == 'josh') {
                      //       Beamer.of(context).beamToNamed('/josh');
                      //     }
                      //   },
                      // ),
                      AppBarMenuItem(
                        title: 'About',
                        route: '/jas',
                      ),
                      AppBarMenuItem(
                        title: 'Contact',
                        route: '/contact',
                      ),
                    ],
                  ),
                  InkWell(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        image,
                      ),
                      // radius: 100,
                    ),

                    // Image.asset(
                    //   image,
                    //   fit: BoxFit.contain,
                    //   height: 50.0,
                    // ),
                    onTap: () => Beamer.of(context).beamToNamed('/'),
                  ),
                ],
              ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: IconButton(
            onPressed: () => Beamer.of(context).beamToNamed('/contact'),
            icon: const Icon(
              Icons.email_outlined,
              size: 24,
            ),
            color: kColor,
          ),
        ),
      ],
    );
  }
}
