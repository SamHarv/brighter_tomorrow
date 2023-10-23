import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget buildListTile(String title, IconData icon, dynamic tapHandler) {
    return ListTile(
      tileColor: kColor,
      leading: Icon(
        icon,
        weight: 10,
        size: 26,
        color: secondaryColor,
      ),
      title: Text(
        title,
        style: GoogleFonts.newsreader(textStyle: menuStyle),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              color: kColor,
              child: Image.asset(noBackgroundLogo),
            ),
            const Divider(),
            buildListTile(
              'Home',
              Icons.home,
              () => Beamer.of(context).beamToNamed('/'),
            ),
            const Divider(),
            buildListTile(
              'EP Services',
              Icons.fitness_center,
              () => Beamer.of(context).beamToNamed('/ep'),
            ),
            const Divider(),
            buildListTile(
              'Mentoring Services',
              Icons.group,
              () => Beamer.of(context).beamToNamed('/mentoring'),
            ),
            const Divider(),
            buildListTile(
              'About Us',
              Icons.people,
              () => Beamer.of(context).beamToNamed('/jas'),
            ),
            // ExpansionTile(
            //   backgroundColor: kColor,
            //   leading: const Icon(
            //     Icons.info,
            //     weight: 10,
            //     size: 26,
            //     color: secondaryColor,
            //   ),
            //   title: Text(
            //     'About',
            //     style: GoogleFonts.newsreader(textStyle: menuStyle),
            //   ),
            //   children: [
            //     buildListTile(
            //       'About Us',
            //       Icons.people,
            //       () => Beamer.of(context).beamToNamed('/about'),
            //     ),
            //     const Divider(),
            //     buildListTile(
            //       'About Jas',
            //       Icons.person,
            //       () => Beamer.of(context).beamToNamed('/jas'),
            //     ),
            //     const Divider(),
            //     buildListTile(
            //       'About Josh',
            //       Icons.person,
            //       () => Beamer.of(context).beamToNamed('/josh'),
            //     ),
            //   ],
            // ),
            const Divider(),
            buildListTile(
              'Contact',
              Icons.email,
              () => Beamer.of(context).beamToNamed('/contact'),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
