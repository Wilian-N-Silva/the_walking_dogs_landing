import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/form_data.dart';
import 'package:the_walking_dogs_landing/helpers/set_form.dart';
import 'package:the_walking_dogs_landing/helpers/variables.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key, required this.image}) : super(key: key);

  final Image image;

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  _setFormState(String? value) {
    setState(() {
      selectedFormType = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'The Walking Pets',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: widget.image,
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Faça o pré-cadastro, receba descontos e novidades em primeira mão!',
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 32.0),
                Form(
                  child: Column(
                    children: [
                      DropdownButtonFormField(
                        value: selectedFormType,
                        isDense: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Tipo de cadastro',
                        ),
                        items: formType
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) => _setFormState(value),
                      ),
                      setForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
