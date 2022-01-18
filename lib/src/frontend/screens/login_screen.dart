import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import 'register_screen.dart';
import '../themes/colors.dart';
import 'package:assivito/src/backend/controllers/auth_controller.dart';

import '../widgets/text_form_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final AuthController authController = Get.put(AuthController());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/icon.png"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      // color: Colors.red,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Obx(() {
                        return TextFormFieldWidget(
                          hintText: "Email ou n° de téléphone",
                          controller: emailController,
                          errorText: authController.emailError.value.isEmpty
                              ? null
                              : authController.emailError.value,
                          validator: (value) {
                            String val = value ?? "";
                            if (val.trim().isEmail == false) {
                              return "Adresse Email incorrect";
                            } else {
                              return null;
                            }
                          },
                        );
                      }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Obx(() {
                      return TextFormFieldWidget(
                        hintText: "Mot de passe",
                        errorText: authController.passwordError.value.isEmpty
                            ? null
                            : authController.passwordError.value,
                        obscureText: true,
                        validator: (value) {
                          String val = value ?? "";
                          if (val.length < 8) {
                            return "Mot de passe trop court";
                          } else {
                            return null;
                          }
                        },
                        controller: passwordController,
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Icon(
                            FontAwesomeIcons.eyeSlash,
                            size: 18,
                            color: Colors.black,
                          ),
                        ),
                      );
                    }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                            color: AppColors.redcolor,
                            fontSize: 8,
                          ),
                        ),
                      ],
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
                          authController.login(
                            emailController.text.trim(),
                            passwordController.text,
                          );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Obx(() {
                          if (authController.loading.isTrue) {
                            return const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.black,
                              ),
                            );
                          } else {
                            return const Text(
                              "SE CONNECTER",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            );
                          }
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text.rich(
                      TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),
                        children: [
                          const TextSpan(text: "Nouveau sur Assivito ?"),
                          TextSpan(
                            text: " S'inscrire",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => RegisterScreen());
                              },
                            style: const TextStyle(color: AppColors.redcolor),
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
