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
        DropdownButtonFormField(
          value: selectedJobCategory,
          isExpanded: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Área de atuação profissional?',
          ),
          items: jobCategories.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                softWrap: true,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedJobCategory = value;
            });
          },
        ),
        customFormField(label: 'Tem filhos?'),
        customFormField(label: 'Já adotou algum animal?'),
        DropdownButtonFormField(
          value: selectedOnTrip,
          isExpanded: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Durante viagens, onde deixará o animal?',
          ),
          items: onTrip.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
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
          isExpanded: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Funcionalidade de interesse?',
          ),
          items: appUsage.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }).toList(),
          onChanged: (String? value) {
            setState(() {
              selectedAppUsage = value;
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
