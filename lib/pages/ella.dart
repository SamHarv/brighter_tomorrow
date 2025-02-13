import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class Ella extends StatelessWidget {
  const Ella({super.key});

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
                          "About Ella",
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
                          )),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: Image.asset(
                            'images/ella.png',
                            fit: BoxFit.cover,
                            height: 400.0,
                          ),
                        ).animate(delay: const Duration(seconds: 1))
                          ..slideX(duration: const Duration(seconds: 3)).fade(
                            duration: const Duration(seconds: 3),
                          )),
                    Padding(
                        padding: const EdgeInsets.all(32),
                        child: Text(
                          'Ella grew up in Woolongong, and after completing '
                          'University and working in a community rehabilitation '
                          'role, she has swapped the beach life for country '
                          'living, moving down south to Henty with her '
                          'husband.\n\n'
                          'Ella is an enthusiastic and down to earth '
                          'practitioner, with a  passionate for providing high '
                          'standard health care to rural areas.\n\n'
                          'Ella also has a special interest in cardiometabolic '
                          'health, chronic pain, women\'s health and healthy '
                          'ageing. Ella is never seen without a smile, and we '
                          'often hear about how her vibrant personality makes '
                          'exercise so much more enjoyable.\n\n'
                          'Outside of work Ella loves to be outdoors and '
                          'moving. She loves exploring Australia, and in her '
                          'free time she keeps busy by renovating her home or '
                          'working on a cattle stud. She also enjoys hiking, '
                          'riding dirt bikes and spending time with her three '
                          'dogs.',
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
