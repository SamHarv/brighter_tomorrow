import 'package:flutter/widgets.dart';
import 'package:beamer/beamer.dart';

import 'pages/home_page.dart';
import 'pages/ep_services.dart';
import 'pages/mentoring_services.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/jas.dart';
import 'pages/josh.dart';

final routerDelegate = BeamerDelegate(
  notFoundRedirectNamed: '/home',
  initialPath: '/home',
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/home': (context, state, data) {
        return const BeamPage(
          key: ValueKey(''),
          type: BeamPageType.fadeTransition,
          title: 'Brighter Tomorrow',
          child: HomePage(),
        );
      },
      '/ep': (context, state, data) {
        return const BeamPage(
          key: ValueKey('ep'),
          type: BeamPageType.fadeTransition,
          title: 'EP Services - Brighter Tomorrow',
          child: EPServices(),
        );
      },
      '/about': (context, state, data) {
        return const BeamPage(
          key: ValueKey('about'),
          type: BeamPageType.fadeTransition,
          title: 'About - Brighter Tomorrow',
          child: AboutPage(),
        );
      },
      '/contact': (context, state, data) {
        return const BeamPage(
          key: ValueKey('contact'),
          type: BeamPageType.fadeTransition,
          title: 'Contact - Brighter Tomorrow',
          child: ContactPage(),
        );
      },
      '/mentoring': (context, state, data) {
        return const BeamPage(
          key: ValueKey('mentoring'),
          type: BeamPageType.fadeTransition,
          title: 'Mentoring Services - Brighter Tomorrow',
          child: MentoringServices(),
        );
      },
      '/jas': (context, state, data) {
        return const BeamPage(
          key: ValueKey('jas'),
          type: BeamPageType.fadeTransition,
          title: 'Jas Morrow - Brighter Tomorrow',
          child: Jas(),
        );
      },
      '/josh': (context, state, data) {
        return const BeamPage(
          key: ValueKey('josh'),
          type: BeamPageType.fadeTransition,
          title: 'Josh Morrow - Brighter Tomorrow',
          child: Josh(),
        );
      },
    },
  ),
);
