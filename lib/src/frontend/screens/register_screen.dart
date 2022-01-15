import 'package:assivito/src/backend/controllers/auth_controller.dart';
import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'confirm_phone_screen.dart';

import '../widgets/text_form_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.put(AuthController());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: AnimatedContainer(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          duration: const Duration(milliseconds: 500),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/img1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "LOGO",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Nom de votre restaurant",
                        validator: (value) {
                          if (value!.length < 3) {
                            return "Nom de restaurant trop court";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Nom complet",
                        controller: fullNameController,
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Votre nom est trop court";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Votre n° de téléphone",
                        validator: (value) {
                          if (value!.length < 8) {
                            return "Numéro de téléphone incorrect";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Votre email",
                        controller: emailController,
                        validator: (value) {
                          if (!value!.trim().isEmail) {
                            return "Votre email est invalide";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Mot de passe",
                        controller: passwordController,
                        obscureText: true,
                        suffixIcon: const Icon(FontAwesomeIcons.eyeSlash),
                        validator: (value) {
                          if (value!.length < 8) {
                            return "Mot de passe trop court";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormFieldWidget(
                        hintText: "Confirmer votre mot de passe",
                        obscureText: true,
                        suffixIcon: const Icon(
                          FontAwesomeIcons.eyeSlash,
                        ),
                        validator: (value) {
                          if (value!.length < 8) {
                            return "Mot de passe non conforme";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.yellowColor,
                          elevation: 0,
                        ),
                        onPressed: () {
                          bool valid = _formKey.currentState!.validate();
                          if (valid) {
                            authController.register(
                              emailController.text.trim(),
                              passwordController.text,
                              displayName: fullNameController.text,
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: const Text(
                            "S'INSCRIRE",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          children: [
                            const TextSpan(text: "Vous avez déja un compte ?"),
                            TextSpan(
                              text: " Connectez vous.",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.back();
                                },
                              style: const TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
