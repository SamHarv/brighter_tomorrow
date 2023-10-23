import 'package:brighter_tomorrow/widgets/display_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants.dart';
import '/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Image.asset(
                  'images/2.png',
                  fit: BoxFit.contain,
                  height: 400.0,
                ),
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                //   child: Center(
                //     child: Text(
                //       "Brighter Tomorrow Exercise Physiology",
                //       textAlign: TextAlign.center,
                //       style: GoogleFonts.newsreader(
                //         textStyle: headingStyle,
                //       ),
                //     ),
                //   ),
                // ),
                DisplayBox(children: [
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      'Welcome to Brighter Tomorrow Exercise Physiology, a '
                      'service started by Jas Morrow to offer high '
                      'quality, personalised Exercise Physiology in the Albury/'
                      'Wodonga area.\n\n'
                      'At Brighter Tomorrow we prioritise our relationships with '
                      'our clients because we genuinely care about what we do, '
                      'and the outcomes you get. We know the journey towards a '
                      'brighter tomorrow can be tough, and that is why we will '
                      'empower, educate and guide you safely the whole way. \n\n'
                      'Our number one goal is to support our clients to get the '
                      'very best out of life. Whether that means feeling more '
                      'confident in your ability to get up and down out of a '
                      'chair, or you are striving for success at elite level in '
                      'sports, we will deliver a thoughtful and tailored '
                      'approach.',
                      style: GoogleFonts.newsreader(
                        textStyle: bodyStyle,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
