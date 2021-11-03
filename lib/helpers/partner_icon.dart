import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/partners_class.dart';

Widget partner(PartnerCategory partner) {
  return Column(
    children: [
      Icon(
        partner.icone,
        size: 48.0,
      ),
      Text(
        partner.titulo,
        style: const TextStyle(fontSize: 24.0),
      ),
    ],
  );
}
