import 'package:flutter/material.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key, required this.image}) : super(key: key);

  final Image image;

  @override
  _TabletState createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
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
                style: Theme.of(context).copyWith().textTheme.headline2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: widget.image,
              )
            ],
          ),
        )
      ],
    );
  }
}
