import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/widgets/display_box.dart';
import '/widgets/custom_appbar.dart';
import '/constants.dart';

final Uri _linkedInUrl = Uri.parse(
    'https://www.linkedin.com/company/brighter-tomorrow-exercise-physiology/');

final Uri _facebookUrl =
    Uri.parse('https://www.facebook.com/profile.php?id=61564030217642');

final Uri _instagramUrl = Uri.parse(
    'https://www.instagram.com/brightertomorrow_exphys?utm_source=ig_web_button_share_sheet&igsh=ZDNlZDc0MzIxNw==');

Future<void> _launchLinkedInUrl() async {
  if (!await launchUrl(_linkedInUrl)) {
    throw 'Could not launch $_linkedInUrl';
  }
}

Future<void> _launchFacebookUrl() async {
  if (!await launchUrl(_facebookUrl)) {
    throw 'Could not launch $_facebookUrl';
  }
}

Future<void> _launchInstagramUrl() async {
  if (!await launchUrl(_instagramUrl)) {
    throw 'Could not launch $_instagramUrl';
  }
}

void _phoneCall() async {
  final call = Uri.parse('tel: +16480799249');
  if (await canLaunchUrl(call)) {
    launchUrl(call);
  } else {
    throw 'Could not launch $call';
  }
}

void _sendEmail() {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'admin@brightertomorrow.com.au',
  );
  launchUrl(emailLaunchUri);
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

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
                    gapH12,
                    Padding(
                        padding: kPadding,
                        child: Text(
                          'Contact',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsreader(
                            textStyle: headingStyle,
                          ),
                        ).animate()
                          ..slide(
                            duration: const Duration(seconds: 3),
                          ).fade(
                            duration: const Duration(seconds: 3),
                          )),
                    Padding(
                        padding: kPadding,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: GoogleFonts.newsreader(
                              textStyle: bodyStyle,
                            ),
                            children: const [
                              TextSpan(
                                text: 'Jas Morrow',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n\nDirector | Senior Exercise Physiologist\n\n',
                              ),
                              TextSpan(
                                text: 'Josh Morrow',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '\n\nDirector | Senior Exercise Physiologist',
                              ),
                            ],
                          ),
                        ).animate(delay: const Duration(seconds: 1))
                          ..slideX(
                            duration: const Duration(seconds: 3),
                          ).fade(
                            duration: const Duration(seconds: 3),
                          )),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 24,
                      endIndent: 24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: kPadding,
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.newsreader(
                            textStyle: bodyStyle,
                          ),
                          children: const [
                            TextSpan(
                              text: 'Brighter Tomorrow Exercise Physiology',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: TextButton(
                        onPressed: _sendEmail,
                        child: Text(
                          'admin@brightertomorrow.com.au',
                          style: GoogleFonts.newsreader(
                            textStyle: bodyStyle,
                          ),
                        ),
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
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: TextButton(
                        onPressed: _phoneCall,
                        child: Text(
                          '0480 799 249',
                          style: GoogleFonts.newsreader(
                            textStyle: bodyStyle,
                          ),
                        ),
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
                        padding: kPadding,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            // IconButton(
                            //   icon: const FaIcon(
                            //     FontAwesomeIcons.youtube,
                            //     color: Colors.grey,
                            //   ),
                            //   onPressed: () {},
                            // ),
                            IconButton(
                              icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                              onPressed: () => _launchLinkedInUrl(),
                            ),
                            // IconButton(
                            //   icon: const FaIcon(
                            //     FontAwesomeIcons.twitter,
                            //     color: Colors.grey,
                            //   ),
                            //   onPressed: () {},
                            // ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.facebook,
                                // color: Colors.grey,
                              ),
                              onPressed: () => _launchFacebookUrl(),
                            ),
                            IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.instagram,
                                // color: Colors.grey,
                              ),
                              onPressed: () => _launchInstagramUrl(),
                            ),
                          ],
                        ).animate(delay: const Duration(seconds: 3))
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
