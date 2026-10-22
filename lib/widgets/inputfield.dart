import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, hintText, labelText, prefixIcon, validator;
  const InputField({
    super.key,
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      validator: validator,
    );
  }
}

/*import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final controller, keyboardType, labelText, hintText, prefixIcon, validator;
  const InputField({
    super.key
    required this.controller,
    required this.keyboardType,
    required this.labelText,
    required this.hintText,
    required this.prefixIcon,
    required this.validator



  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: "Number 1",
        labelStyle: TextStyle(color: Colors.black),
        hintText: "Enter a No.",
        prefixIcon: Icon(Icons.numbers),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      validator: (value) {
        if (value == null) {
          return "Field is Empty";
        }
        return null;
      },
    );
  }
}*/
