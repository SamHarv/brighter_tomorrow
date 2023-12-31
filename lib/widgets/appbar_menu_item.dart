import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';

class AppBarMenuItem extends StatelessWidget {
  const AppBarMenuItem({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: InkWell(
        child: Text(
          title,
          style: GoogleFonts.newsreader(
            textStyle: const TextStyle(
              fontSize: 20.0,
              color: kColor,
            ),
          ),
        ),
        onTap: () => Beamer.of(context).beamToNamed(route),
      ),
    );
  }
}
