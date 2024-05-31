import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class Jas extends StatelessWidget {
  const Jas({super.key});

  @override
  Widget build(BuildContext context) {
    double mediaWidth = MediaQuery.of(context).size.width;
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
          // color: kColor,
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
                        "About Jas",
                        style: GoogleFonts.newsreader(
                          textStyle: headingStyle,
                        ),
                      ).animate()
                        ..slide(
                                duration: const Duration(seconds: 3),
                                begin: const Offset(0, 0.5),
                                end: const Offset(0, 0))
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'images/jas.jpeg',
                          fit: BoxFit.contain,
                          height: 400.0,
                        ),
                      ).animate(delay: const Duration(seconds: 1))
                        ..slideX(duration: const Duration(seconds: 3)).fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        'Jas grew up locally, then moved away for many years '
                        'before returning and settling down in the beautiful '
                        'Albury/Wodonga region.\n\n'
                        'Jas has been in the health and fitness industry for over '
                        '10 years. Following her passion for health, and her love '
                        'for working with people Jas became dual qualified as an '
                        'Exercise Scientist and Exercise Physiologist by '
                        'completing a Bachelor degree in Exercise Science, '
                        'followed by a Masters degree in Exercise Physiology. Jas '
                        'has completed additional study in mental health and '
                        'neurological rehabilitation. Jas has experience in '
                        'community rehab, public health and leading a team within '
                        'a large allied health clinic. Currently Jas also works in '
                        'the speciality area of child and adolescent mental '
                        'health.\n\n'
                        'Although it might sound cliche\' seeing positive changes '
                        'to people\'s lives is what continues to drive Jas\' '
                        'passion for Exercise Physiology. She prides herself on '
                        'being adaptable to always ensures that her prescription '
                        'is appropriate for each client, on that particular day. '
                        'For this reason, Jas loves working with those with '
                        'complex, multifactorial health conditions.\n\n'
                        'When not at work, Jas loves to spend time outdoors either '
                        'walking her two dogs Cooper and Odie, swimming, horse '
                        'riding or hiking. She loves to travel, experience new '
                        'places and meet people from all over the world.\n\n'
                        'Fun fact: Jas has worked three seasons as a government '
                        'forest firefighter!',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ).animate(delay: const Duration(seconds: 2))
                        ..slide(
                                duration: const Duration(seconds: 3),
                                begin: const Offset(0, 0.5),
                                end: const Offset(0, 0))
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                        child: mediaWidth > 740
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/horse.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ),
                                  const SizedBox(width: 32),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/fire.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ),
                                  const SizedBox(width: 32),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/bicycle.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ),
                                ],
                              )
                                .animate(delay: const Duration(seconds: 3))
                                .slide(
                                    duration: const Duration(seconds: 3),
                                    begin: const Offset(0, 0.5),
                                    end: const Offset(0, 0))
                                .fade(
                                  duration: const Duration(seconds: 3),
                                )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/horse.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ).animate(delay: const Duration(seconds: 2))
                                    ..slideX(
                                      duration: const Duration(seconds: 3),
                                    ).fade(
                                      duration: const Duration(seconds: 3),
                                    ),
                                  const SizedBox(height: 32),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/fire.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ).animate(delay: const Duration(seconds: 3))
                                    ..slideX(
                                            duration:
                                                const Duration(seconds: 3),
                                            begin: 0.5,
                                            end: 0)
                                        .fade(
                                      duration: const Duration(seconds: 3),
                                    ),
                                  const SizedBox(height: 32),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(32),
                                    child: Image.asset(
                                      'images/bicycle.jpeg',
                                      fit: BoxFit.contain,
                                      height: 200.0,
                                    ),
                                  ).animate(delay: const Duration(seconds: 4))
                                    ..slideX(
                                            duration:
                                                const Duration(seconds: 3))
                                        .fade(
                                      duration: const Duration(seconds: 3),
                                    ),
                                ],
                              )),
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
