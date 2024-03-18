import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '/widgets/display_box.dart';
import '/widgets/custom_appbar.dart';
import '/constants.dart';

final Uri _linkedInUrl = Uri.parse(
    'https://www.linkedin.com/company/brighter-tomorrow-exercise-physiology/');

Future<void> _launchLinkedInUrl() async {
  if (!await launchUrl(_linkedInUrl)) {
    throw 'Could not launch $_linkedInUrl';
  }
}

void _phoneCall() async {
  final call = Uri.parse('tel: +16437381558');
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
                    gapH12,
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Contact',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.newsreader(
                          textStyle: headingStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: Text(
                        'Jas Saunders\n\n'
                        // morrow
                        'Brighter Tomorrow',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.newsreader(
                          textStyle: bodyStyle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: kPadding,
                      child: TextButton(
                        onPressed: _sendEmail,
                        child: Text(
                          'admin@brightertomorrow.com.au',
                          style: GoogleFonts.newsreader(
                            textStyle: bodyStyle,
                          ),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     left: 24,
                    //     top: 8,
                    //     right: 24,
                    //     bottom: 12,
                    //   ),
                    //   child: TextButton(
                    //     onPressed: _phoneCall,
                    //     child: Text(
                    //       '0437 381 558',
                    //       style: GoogleFonts.newsreader(
                    //         textStyle: bodyStyle,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: kPadding,
                      child: Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.youtube,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                            onPressed: () => _launchLinkedInUrl(),
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                        ],
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
