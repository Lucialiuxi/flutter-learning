import 'package:flutter/material.dart';
// import 'tutorialHome.dart';
// import 'customApp.dart';
import './state/index.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    // home: TutorialHome(),
    // home: CustomApp(),
    home: HomeAboutState(),
  ));
}
