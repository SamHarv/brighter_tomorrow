import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/display_box.dart';
import '/constants.dart';
import '/widgets/custom_appbar.dart';

class EPServices extends StatelessWidget {
  const EPServices({super.key});

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
                          "Exercise Physiology Services",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Text(
                        'Firstly, what is an Exercise Physiologist?\n\n'
                        'Exercise Physiologists are allied health professionals '
                        'who specialise in clinical exercise interventions, and '
                        'have the skills and knowledge to treat chronic health '
                        'conditions and injuries, as well as support people with '
                        'disabilities, coach elite athletes and assist people '
                        'of all ages to optimise their health. They utilise '
                        'health education, behavioural '
                        'coaching and exercise prescription to improve lifestyle, '
                        'health and well-being.\n\n'
                        'Exercise Physiologists are recognised by Medicare, and '
                        'most private health providers.',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Center(
                        child: Text(
                          "National Disability Insurance Scheme (NDIS)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Text(
                        'Brighter Tomorrow is able to support self-managed and '
                        'plan-managed NDIS participants. We know the value '
                        'exercise can have to people\'s lives, and we endeavour to '
                        'make the experience as positive as possible. This starts '
                        'from the environment, as that is why we offer to come to '
                        'you, and provide our service in the comfort of your own '
                        'home. If preferred (or more appropriate) we may recommend '
                        'appointments at a gym or hydrotherapy pool.\n\n'
                        'Within an NDIS plan, Exercise Physiology '
                        'falls under Capacity Building, and can come from either '
                        'subcategory of Improved Health and Wellbeing, or Improved '
                        'Daily Living.\n\n'
                        'Before an initial appointment, a referral form must be '
                        'completed by either the participant, a guardian, or '
                        'support coordinator and then a NDIS service agreement '
                        'will be sent to you to review.\n\n'
                        'All initial appointments are minimum of 1.5 hours, with '
                        'up to 60 minutes face to face, and 30 mins of report '
                        'writing and administration time. (This often involves '
                        'contacting family, other support providers or support '
                        'coordinators, as well as completing legal clinical '
                        'notes).\n\n'
                        'Subsequent sessions are offered as follows:\n'
                        ' • Standard follow up - up to 40 minutes face to face, and '
                        'five minutes administration\n'
                        ' • Extended follow up - up to 55 minutes and five minutes '
                        'administration',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Center(
                        child: Text(
                          "Department of Veteran Affairs (DVA)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Text(
                        'With a current D904 referral from your GP, Brighter '
                        'Tomorrow is able to provide Exercise Physiology services '
                        'tailored to your needs. We have a strong understanding of '
                        'the challenges veterans and their families can '
                        'experience, and is excited to be offering Department '
                        'of Veteran Affairs supported health services.',
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Center(
                        child: Text(
                          "Private/ Home Care",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
                      child: Text(
                        'Without a referral, Brighter Tomorrow offers gym and home-'
                        'based services.\n'
                        'Contact us to discuss your specific needs and how we can '
                        'help.',
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
