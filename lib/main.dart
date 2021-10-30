import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/responsive.dart';

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
  Image image = Image.asset(
    Random().nextInt(100) < 50
        ? 'assets/images/blue/adopt_a_pet_bro.png'
        : 'assets/images/blue/animal_shelter_bro.png',
  );

  _desktop(Size size, image) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Center(
            child: image,
          ),
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'The Walking Pets',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        desktop: _desktop(_size, image),
        mobile: Container(
          color: Colors.blue,
        ),
        tablet: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}
