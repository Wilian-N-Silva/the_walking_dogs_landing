import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/responsive.dart';
import 'package:the_walking_dogs_landing/ui/breakpoints/desktop.dart';
import 'package:the_walking_dogs_landing/ui/breakpoints/mobile.dart';
import 'package:the_walking_dogs_landing/ui/breakpoints/tablet.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Walking Pets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline2: TextStyle(color: Colors.black),
          headline4: TextStyle(color: Colors.black),
          headline5: TextStyle(color: Colors.black),
        ),
      ),
      home: const Landing(),
    );
  }
}

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  // TEXTS

  Image image = Image.asset(
    Random().nextInt(100) < 50
        ? 'assets/images/blue/adopt_a_pet_bro.png'
        : 'assets/images/blue/animal_shelter_bro.png',
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: Desktop(image: image),
        tablet: Tablet(image: image),
        mobile: Mobile(image: image),
      ),
    );
  }
}
