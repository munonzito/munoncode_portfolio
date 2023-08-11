import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  TextEditingController controller;
  CustomTextFormField({required this.controller, super.key});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: "ejemplo@gmail.com", border: InputBorder.none),
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return 'Ingresa un correo válido';
          } else if (!EmailValidator.validate(value)) {
            return 'Ingresa un correo válido';
          }
        } else {
          return 'Ingresa un correo válido';
        }

        return null;
      },
    );
  }
}
