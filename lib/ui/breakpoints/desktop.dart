import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/form_data.dart';
import 'package:the_walking_dogs_landing/helpers/phrases.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          phrases[0],
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          phrases[1],
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: widget.image,
                        ),
                        ElevatedButton(
                          child: const Text('Saiba Mais'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height / 2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 128.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            phrases[3],
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            phrases[4],
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            phrases[5],
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        phrases[2],
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 32.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 64.0),
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
                                      child: Text(value),
                                    );
                                  },
                                ).toList(),
                                onChanged: (String? value) =>
                                    _setFormState(value),
                              ),
                              setForm(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
