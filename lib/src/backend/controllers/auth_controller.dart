import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../frontend/screens/nav_bar_home.dart' as nav;
import '../../frontend/screens/login_screen.dart';

FirebaseAuth auth = FirebaseAuth.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp();

class AuthController extends GetxController {
  static AuthController authInstance = Get.find();
  late Rx<User?> firebaseUser;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  var emailError = "".obs;
  var fullNameError = "".obs;
  var passwordError = "".obs;

  var loading = false.obs;

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

  void register(
    String email,
    String password, {
    String? displayName,
    String? phoneNumber,
    String? restaurantName,
  }) async {
    try {
      loading.value = true;
      UserCredential result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User user = result.user!;
      user.updateDisplayName(displayName);
      await saveBasicUserToFirestore(
        restaurantName: restaurantName,
        phoneNumber: phoneNumber,
        email: email,
        displayName: displayName,
        user: user,
      );
      loading.value = false;
      emailError.value = "";
      passwordError.value = "";
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        loading.value = false;
        emailError.value = "Cet email est utilisé par un autre compte.";
      } else {
        loading.value = false;
        Get.snackbar(
          "Erreur d'inscription",
          e.code,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      loading.value = false;
      Get.snackbar(
        "Erreur d'inscription",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      loading.value = true;
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      loading.value = false;
      emailError.value = "";
      passwordError.value = "";
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        loading.value = false;
        emailError.value = "Cet email n'est associé à aucun compte.";
      } else if (e.code == "wrong-password") {
        loading.value = false;
        passwordError.value = "Le mot de passe est incorrect !";
      } else if (e.code == "user-disabled") {
        loading.value = false;
        emailError.value = "Désolé, votre compte est désactivé !";
      } else {
        loading.value = false;
        Get.snackbar(
          "Erreur de connexion",
          e.code,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      loading.value = false;
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

  Future saveBasicUserToFirestore({
    String? restaurantName,
    String? phoneNumber,
    String? displayName,
    String? email,
    User? user,
  }) async {
    await firebaseFirestore.collection('users').add({
      'uid': user!.uid,
      'fullName': displayName,
      'email': email,
      'restaurantName': restaurantName,
      'phoneNumber': phoneNumber,
      'createdAt': Timestamp.now(),
      'isVerified': user.emailVerified,
    });
  }
}
