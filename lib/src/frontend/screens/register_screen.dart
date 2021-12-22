import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'confirm_phone_screen.dart';

import '../widgets/text_form_field_widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                    const TextFormFieldWidget(
                      hintText: "Nom de votre restaurant",
                    ),
                    const SizedBox(height: 30),
                    const TextFormFieldWidget(
                      hintText: "Votre Prénom",
                    ),
                    const SizedBox(height: 30),
                    const TextFormFieldWidget(
                      hintText: "Votre n° de téléphone",
                    ),
                    const SizedBox(height: 30),
                    const TextFormFieldWidget(
                      hintText: "Votre email",
                    ),
                    const SizedBox(height: 30),
                    const TextFormFieldWidget(
                      hintText: "Mot de passe",
                      suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
                    ),
                    const SizedBox(height: 30),
                    const TextFormFieldWidget(
                      hintText: "Confirmer votre mot de passe",
                      suffixIcon: Icon(
                        FontAwesomeIcons.eyeSlash,
                      ),
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
                        Get.to(() => const ConfirmPhoneScreen());
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
    );
  }
}
