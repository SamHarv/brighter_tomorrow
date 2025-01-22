import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/widgets/display_box.dart';
import '/constants.dart';
import '/widgets/custom_appbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer,
      appBar: const CustomAppBar(),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kColor.withValues(alpha: 0.6),
              kColor,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DisplayBox(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                        child: Text(
                          "About Us",
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        )
                            .animate()
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3))),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'images/together.jpeg',
                          fit: BoxFit.contain,
                          height: 400.0,
                        ),
                      ).animate(delay: const Duration(seconds: 1))
                        ..slideX(duration: const Duration(seconds: 3)).fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.asset(
                              'images/cooper.jpeg',
                              fit: BoxFit.contain,
                              height: 200.0,
                            ),
                          ),
                          const SizedBox(width: 32),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Image.asset(
                              'images/odie.jpeg',
                              fit: BoxFit.contain,
                              height: 200.0,
                            ),
                          ),
                        ],
                      ).animate(delay: const Duration(seconds: 2))
                        ..slideX(
                                duration: const Duration(seconds: 3),
                                begin: 0.5,
                                end: 0)
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        'Jas and Josh Morrow met while both studying Exercise '
                        'Physiology at University.\n\n'
                        'Both with a love for exploring the world they have '
                        'prioritised travelling as much as possible. Together they '
                        'have settled down in Albury Wodonga, built a home and '
                        'love their two dogs very much.\n\n'
                        'Combining their knowledge and passion for Exercise '
                        'Physiology, Brighter Tomorrow was established.',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ).animate(delay: const Duration(seconds: 3))
                        ..slide(
                                duration: const Duration(seconds: 3),
                                begin: const Offset(0, 0.5),
                                end: const Offset(0, 0))
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
