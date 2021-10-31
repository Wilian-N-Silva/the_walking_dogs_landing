import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key, required this.image}) : super(key: key);

  final Image image;

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'The Walking Pets',
                style: Theme.of(context).copyWith().textTheme.headline4,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: widget.image,
              )
            ],
          ),
        )
      ],
    );
  }
}
