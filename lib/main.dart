import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/frontend/screens/login_screen.dart';
import 'src/frontend/screens/register_screen.dart';
import 'src/frontend/screens/home_screen.dart';
import 'src/frontend/screens/confirm_phone_screen.dart';
import 'src/frontend/screens/search_screen.dart';
import 'src/frontend/screens/before_login_screen.dart';
import 'src/frontend/screens/favorite_screen.dart';
import 'src/frontend/screens/onboarding_screen.dart';

import 'src/frontend/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assivito',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      darkTheme: AppTheme.darkTheme,
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Assivito"),
            ElevatedButton(
              onPressed: () {
                Get.to(LoginScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(RegisterScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Register"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const HomeScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const ConfirmPhoneScreen(),
                    transition: Transition.fadeIn);
              },
              child: const Text("Confirm Phone"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const SearchScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Search Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const BeforeLoginScreen(),
                    transition: Transition.fadeIn);
              },
              child: const Text("Before Login Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const FavoriteScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Favorite Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const OnbaordingScreen(), transition: Transition.fadeIn);
              },
              child: const Text("Onboarding Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
