import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/frontend/screens/login_screen.dart';
// import 'src/frontend/screens/register_screen.dart';
// import 'src/frontend/screens/home_screen.dart';
// import 'src/frontend/screens/confirm_phone_screen.dart';
// import 'src/frontend/screens/search_screen.dart';
// import 'src/frontend/screens/before_login_screen.dart';
// import 'src/frontend/screens/favorite_screen.dar t';
// import 'src/frontend/screens/onboarding_screen.dart';

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
