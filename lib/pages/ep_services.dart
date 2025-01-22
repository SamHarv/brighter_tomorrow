import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/display_box.dart';
import '/constants.dart';
import '/widgets/custom_appbar.dart';

class EPServices extends StatelessWidget {
  const EPServices({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselSliderController buttonCarouselController =
        CarouselSliderController();
    final mediaWidth = MediaQuery.sizeOf(context).width;
    final mediaHeight = MediaQuery.sizeOf(context).height;
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
                        )
                            .animate()
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3)),
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
                      ).animate(delay: const Duration(seconds: 1))
                        ..slide(
                                duration: const Duration(seconds: 3),
                                begin: const Offset(0, 0.5),
                                end: const Offset(0, 0))
                            .fade(
                          duration: const Duration(seconds: 3),
                        ),
                    ),
                    CarouselSlider(
                      items: [1, 2, 3].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              child: Image.asset(
                                                'images/services_$i.jpg',
                                                height: mediaHeight < mediaWidth
                                                    ? 600
                                                    : null,
                                              ),
                                            ),
                                            titlePadding:
                                                const EdgeInsets.all(0),
                                          );
                                        });
                                  },
                                  child: Image.asset(
                                    'images/services_$i.jpg',
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                      carouselController: buttonCarouselController,
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true,
                        viewportFraction: 0.75,
                        aspectRatio: 2,
                        height: mediaWidth < 750 ? null : 400,
                      ),
                    ).animate(delay: const Duration(seconds: 1))
                      ..slideX(
                              duration: const Duration(seconds: 3),
                              begin: 0.5,
                              end: 0)
                          .fade(
                        duration: const Duration(seconds: 3),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromRGBO(158, 162, 138, 1),
                              ),
                            ),
                            onPressed: () =>
                                buttonCarouselController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.linear),
                            child: const Text(
                              '←',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                const Color.fromRGBO(158, 162, 138, 1),
                              ),
                            ),
                            onPressed: () => buttonCarouselController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear),
                            child: const Text(
                              '→',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ).animate(delay: const Duration(seconds: 1))
                        ..slideX(
                                duration: const Duration(seconds: 3),
                                begin: 0.5,
                                end: 0)
                            .fade(
                          duration: const Duration(seconds: 3),
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
                        )
                            .animate(delay: const Duration(seconds: 2))
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3)),
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
                      ).animate(delay: const Duration(seconds: 3))
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
                      child: Center(
                        child: Text(
                          "Department of Veteran Affairs (DVA)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        )
                            .animate(delay: const Duration(seconds: 4))
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3)),
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
                      ).animate(delay: const Duration(seconds: 5))
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
                      child: Center(
                        child: Text(
                          "Private/ Home Care",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        )
                            .animate(delay: const Duration(seconds: 6))
                            .slide(duration: const Duration(seconds: 3))
                            .fade(duration: const Duration(seconds: 3)),
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
                      ).animate(delay: const Duration(seconds: 7))
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
