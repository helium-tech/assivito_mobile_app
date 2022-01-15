import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../frontend/screens/nav_bar_home.dart' as nav;
import '../../frontend/screens/login_screen.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();

class AuthController extends GetxController {
  static AuthController authInstance = Get.find();
  late Rx<User?> firebaseUser;

  var emailError = "".obs;
  var fullNameError = "".obs;
  var passwordError = "".obs;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUser.bindStream(auth.userChanges());

    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    if (user != null) {
      Get.offAll(() => const nav.AppView());
    } else {
      Get.offAll(() => LoginScreen());
    }
  }

  void register(String email, String password, {String? displayName}) async {
    try {
      UserCredential result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = result.user!;
      user.updateDisplayName(displayName);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        emailError.value = "Cet email est utilisé par un autre compte.";
      } else {
        Get.snackbar(
          "Erreur d'inscription",
          e.message!,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Erreur d'inscription",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        emailError.value = "Cet email n'est associé à aucun compte.";
      } else if (e.code == "wrong-password") {
        passwordError.value = "Le mot de passe est incorrect !";
      } else {
        Get.snackbar(
          "Erreur de connexion",
          e.message!,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        "Erreur de connexion",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signOut() {
    try {
      auth.signOut();
    } catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
