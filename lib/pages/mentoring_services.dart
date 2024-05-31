import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class MentoringServices extends StatelessWidget {
  const MentoringServices({super.key});

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
                      child: Center(
                        child: Text(
                          "Clinical Mentoring for Exercise Physiologists",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        )
                            .animate()
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        'We know the journey from University to your first job as '
                        'an AEP can be overwhelming at the best of times. We '
                        'speak from experience, we have been there. We also '
                        'know that the first few years provide great '
                        'opportunity for growth, but adapting to the demands '
                        'of clinical practice can be '
                        'challenging and stressful.\n\n'
                        'We are so passionate about the difference Exercise '
                        'Physiology can make to people\'s lives and we are '
                        'excited to offer our experience, '
                        'enthusiasm and expertise to developing Exercise '
                        'Physiologists.\n\n'
                        'We are offering video mentoring services, meaning we can '
                        'support you from any location.\n\n'
                        'These 1:1 sessions are an opportunity to discuss anything '
                        'relevant to working as an EP and may include:\n'
                        ' • Patient cases\n'
                        ' • Treatment plans\n'
                        ' • Exercise prescription\n'
                        ' • Running successful group class\n'
                        ' • Writing professional letters and reports\n'
                        ' • Building referral pathways and professional networks\n'
                        ' • Time management in private practice\n'
                        ' • Third parties and subsequent administration\n'
                        ' • Working within a multidisciplinary team and '
                        'understanding when to refer\n'
                        ' • Navigating when complex situations arise\n'
                        ' • Growth pathways as an EP\n\n'
                        'If you would like to find out more, please be in touch to '
                        'organise a complimentary 15 minute introductory call.',
                        // with '
                        //'either Jas.',
                        // or Josh
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ).animate(delay: const Duration(seconds: 1))
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
