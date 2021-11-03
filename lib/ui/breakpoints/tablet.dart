import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/form_data.dart';
import 'package:the_walking_dogs_landing/helpers/phrases.dart';
import 'package:the_walking_dogs_landing/helpers/set_form.dart';
import 'package:the_walking_dogs_landing/helpers/variables.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key, required this.image}) : super(key: key);

  final Image image;

  @override
  _TabletState createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  _setFormState(String? value) {
    setState(() {
      selectedFormType = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    phrases[0],
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    phrases[1],
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    child: widget.image,
                  ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Encontre seu novo amigo pet!',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    phrases[3],
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Image.asset(
                      'assets/images/mockup4.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Serviços',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    phrases[4],
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 18.0),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: Image.asset(
                          'assets/images/mockup5.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  phrases[2],
                  style: Theme.of(context).textTheme.headline4,
                  textAlign: TextAlign.center,
                ),
                Text(
                  phrases[5],
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 18.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    child: Column(
                      children: [
                        DropdownButtonFormField(
                          value: selectedFormType,
                          isDense: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Tipo de cadastro',
                          ),
                          items: formType.map<DropdownMenuItem<String>>(
                            (String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                          onChanged: (String? value) => _setFormState(value),
                        ),
                        setForm(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
