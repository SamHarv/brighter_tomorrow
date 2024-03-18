import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class Josh extends StatelessWidget {
  const Josh({super.key});

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
              kColor.withOpacity(0.6),
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
                        "About Josh",
                        style: GoogleFonts.newsreader(
                          textStyle: headingStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'images/josh.jpeg',
                          fit: BoxFit.contain,
                          height: 400.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        'Josh grew up in the Mallee on a cropping farm, and has '
                        'lived in multiple locations in Victoria as well as QLD, '
                        'before moving to Albury Wodonga in 2018.\n\n'
                        'Josh has always had a love for sports, and has played '
                        'basketball, AFL, tennis, swimming and more recently has '
                        'taken up triathlon.\n\n'
                        'Josh has worked in many different areas of Exercise '
                        'Physiology including public health, private health, '
                        'occupational rehabilitation and workplace health '
                        'prevention. This has included working internationally at '
                        'remote sites providing health assessments, education and '
                        'physical rehabilitation.\n\n'
                        'Josh prides himself on treating every client with the '
                        'highest level of care, and building meaning relationships '
                        'leading to improved outcomes and achieving goals. Josh '
                        'has completed additional study in chronic pain '
                        'incorporating a bio psychosocial approach, cardiac rehab, '
                        'and functional Pilates.\n\n'
                        'Josh is a big fan of the Miami Heat (NBA basketball '
                        'team), as well as Carlton football club which he claims '
                        'to be the best club in AFL of all time.\n\n'
                        'Fun Fact: Josh has completed the Tough Mudder course six '
                        'times!',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
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
