import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/components/custom_form_field.dart';
import 'package:the_walking_dogs_landing/helpers/data_formatter.dart';
import 'package:the_walking_dogs_landing/helpers/form_data.dart';
import 'package:the_walking_dogs_landing/helpers/variables.dart';

class FormPF extends StatefulWidget {
  const FormPF({Key? key}) : super(key: key);

  @override
  _FormPFState createState() => _FormPFState();
}

class _FormPFState extends State<FormPF> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customFormField(label: 'CPF', formatterList: [DataFormatters().cpf]),
        customFormField(label: 'Nome Completo'),
        customFormField(label: 'Idade'),
        customFormField(label: 'Quantas pessoas moram com você?'),
        customFormField(label: 'Área de atuação profissional?'),
        customFormField(label: 'Tem filhos?'),
        customFormField(label: 'Já adotou algum animal?'),
        DropdownButtonFormField(
          value: selectedOnTrip,
          isDense: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Durante viagens, onde deixará o animal?',
          ),
          items: onTrip.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedOnTrip = value;
            });
          },
        ),
        customFormField(label: 'Qual porte estaria interessado?'),
        DropdownButtonFormField(
          value: selectedAppUsage,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          isDense: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Tipo de uso do aplicativo',
          ),
          items: appUsage.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedAppUsage = value!;
            });
          },
        ),
        customFormField(
          label: 'CEP',
          formatterList: [DataFormatters().brazilianPostalCode],
        ),
        customFormField(label: 'Mora em casa ou apartamento?'),
        customFormField(label: 'Mora de aluguel ou imóvel próprio?'),
      ],
    );
  }
}
