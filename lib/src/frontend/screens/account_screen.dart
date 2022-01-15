import 'package:assivito/src/backend/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'marchand_detail_screen.dart';
import 'our_fournisseurs_screen.dart';
import 'our_best_offer_screen.dart';
import 'our_rayon.dart';
import 'one_rayon_screen.dart';
import 'offer_list_screen.dart';
import '../widgets/custom_nav_bar_widget.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // const SizedBox(
              //   height: 50,
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const MerchantDetailScreen());
              //   },
              //   child: const Text("Detail Marchand"),
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const OurFournisseursScreen());
              //   },
              //   child: const Text("Fournisseurs screen"),
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const OurBestOfferScreen());
              //   },
              //   child: const Text("Our Best Offer"),
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const OurRayonScreen());
              //   },
              //   child: const Text("Nos rayons"),
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const OneRayonScreen());
              //   },
              //   child: const Text("Nos rayons détails"),
              // ),
              // OutlinedButton(
              //   onPressed: () {
              //     Get.to(const AppView());
              //   },
              //   child: const Text("Bottom bar"),
              // ),
              OutlinedButton(
                onPressed: () {
                  authController.signOut();
                },
                child: const Text("Déconnexion"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
