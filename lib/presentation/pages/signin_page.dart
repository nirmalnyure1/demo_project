import 'package:demo_project/core/widgets/custom_button1.dart';
import 'package:demo_project/presentation/pages/home_page.dart';
import 'package:demo_project/presentation/pages/signup_page.dart';
import 'package:demo_project/presentation/widgets/auth_bottom_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/widgets/custom_field.dart';
import '../widgets/auth_page_title_design.dart';

class SigninPage extends StatelessWidget {
  SigninPage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 50),
                  const AuthPageTitleDesign(
                    title: 'Sign In',
                    subTitle: 'Login to your account',
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    title: 'Email Id',
                    name: "email",
                    // requiredd: true,
                    hintText: "Enter your email id",
                    validators: [
                      FormBuilderValidators.required(
                          errorText: "please enter email"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    title: 'Password',
                    name: "password",
                    requiredd: true,
                    hintText: "Enter your password",
                    validators: [
                      FormBuilderValidators.required(
                          errorText: "please enter password"),
                    ],
                  ),
                  const SizedBox(height: 50),
                  CustomButtion1(
                      onPressed: () {
                        formKey.currentState!.validate();
                        if (formKey.currentState!.isValid) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        }
                      },
                      name: "Sign In"),
                  const SizedBox(height: 10),
                  AuthBottomContent(
                      text: "Dont Have accont?",
                      submitTypeText: "Sign Up",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
