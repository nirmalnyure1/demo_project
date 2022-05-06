import 'package:demo_project/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomTextFormField extends StatelessWidget {
  final String name;
  final String title;

  final List<String? Function(String?)> validators;
  final bool obscureText;
  final bool requiredd;
  final String hintText;

  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.name,
    required this.validators,
    this.obscureText = false,
    required this.hintText,
    this.requiredd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              requiredd
                  ? const Text(
                      "*",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    )
                  : const Text(""),
            ],
          ),
        ),
        const SizedBox(height: 12),
        FormBuilderTextField(
          name: name,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            errorStyle: const TextStyle(
              fontSize: 10,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            //filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(width: 1, color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: buttonColor,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
          obscureText: obscureText,
          validator: FormBuilderValidators.compose(validators),
        ),
      ],
    );
  }
}
