import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/components/custom_form_field.dart';
import 'package:the_walking_dogs_landing/helpers/data_formatter.dart';

class FormPJ extends StatefulWidget {
  const FormPJ({Key? key}) : super(key: key);

  @override
  _FormPJState createState() => _FormPJState();
}

class _FormPJState extends State<FormPJ> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customFormField(label: 'CNPJ', formatterList: [DataFormatters().cnpj]),
        customFormField(label: 'Nome Fantasia'),
        customFormField(
          label: 'CEP',
          formatterList: [DataFormatters().brazilianPostalCode],
        ),
      ],
    );
  }
}
