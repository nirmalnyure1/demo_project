import 'package:demo_project/presentation/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/widgets/custom_button1.dart';
import '../../core/widgets/custom_field.dart';
import '../widgets/auth_bottom_content.dart';
import '../widgets/auth_page_title_design.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);
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
                    title: 'Sign Up',
                    subTitle: 'Register your account',
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    title: 'Full Name',
                    name: "fullName",
                    requiredd: true,
                    hintText: "Enter your full name",
                    validators: [
                      FormBuilderValidators.required(
                          errorText: "please enter full name"),
                      FormBuilderValidators.minLength(4,
                          errorText: "username should be atleast 4 character"),
                      FormBuilderValidators.maxLength(20,
                          errorText: "username should not exceed 25 character"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    title: 'Email Id',
                    name: "email",

                    //requiredd: true,
                    hintText: "Enter your email id",
                    validators: [
                      FormBuilderValidators.required(
                          errorText: "please enter email"),
                      FormBuilderValidators.email(
                          errorText:
                              "please enter valid email\neg.abc@gmail.com")
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
                      FormBuilderValidators.maxLength(20,
                          errorText:
                              "password  should not exceed 20 character"),
                      FormBuilderValidators.match(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                          errorText:
                              "password must has atleast 8 character that include\nat least 1 lowercase, 1 uppercase, 1 number and \n1 special character in (!@\$#&*^)")
                    ],
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    title: 'Confirm Password',
                    name: "confirmPassword",
                    requiredd: true,
                    hintText: "Enter your password again",
                    validators: [
                      FormBuilderValidators.required(
                          errorText: "please enter confirm password"),
                      (val) {
                        if (formKey.currentState!.fields["password"]?.value !=
                            formKey.currentState!.fields["confirmPassword"]
                                ?.value) {
                          return "password donot match";
                        }
                        return null;
                      }
                    ],
                  ),
                  const SizedBox(height: 50),
                  CustomButtion1(
                      onPressed: () {
                        formKey.currentState!.validate();
                        if (formKey.currentState!.isValid) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninPage()),
                          );
                        }
                      },
                      name: "Setup"),
                  const SizedBox(height: 10),
                  AuthBottomContent(
                      text: "Already have a account?",
                      submitTypeText: "Sign In",
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SigninPage()),
                        );
                      }),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
