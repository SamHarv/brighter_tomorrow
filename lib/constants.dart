import 'package:flutter/material.dart';
import './widgets/app_drawer.dart';

const Color kColor = Color.fromRGBO(108, 112, 88, 1);

const gapH35 = SizedBox(height: 35);
const gapH20 = SizedBox(height: 20);
const gapH12 = SizedBox(height: 12);

const Color secondaryColor = Colors.white;
const Color thirdColor = Colors.black;
const String noBackgroundLogo = 'images/2.png';
const String logo = 'images/1.png';

const appDrawer = AppDrawer();

const headingStyle = TextStyle(
  fontSize: 30.0,
  color: kColor,
);
const bodyStyle = TextStyle(
  fontSize: 20.0,
  color: thirdColor,
);
const menuStyle = TextStyle(
  fontSize: 20.0,
  color: secondaryColor,
);

const kPadding = EdgeInsets.only(
  left: 24,
  top: 12,
  right: 24,
  bottom: 12,
);
