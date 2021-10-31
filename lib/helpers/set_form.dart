import 'package:flutter/material.dart';
import 'package:the_walking_dogs_landing/helpers/form_data.dart';
import 'package:the_walking_dogs_landing/helpers/variables.dart';
import 'package:the_walking_dogs_landing/ui/forms/form_pf.dart';
import 'package:the_walking_dogs_landing/ui/forms/form_pj.dart';

setForm() {
  if (selectedFormType == formType[0]) {
    return const FormPF();
  } else if (selectedFormType == formType[1]) {
    return const FormPJ();
  } else {
    return Container();
  }
}
