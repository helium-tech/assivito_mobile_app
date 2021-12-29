import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/material.dart';

import 'our_fournisseurs_screen.dart';
import '../widgets/custom_title_widget.dart';
import 'home_screen.dart';

class OurRayonScreen extends StatelessWidget {
  const OurRayonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('NOS RAYONS'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              child: SizedBox(
                height: 28,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PillsWidget(
                      title: "Tomate",
                      isActive: true,
                    ),
                    PillsWidget(title: "Oignon"),
                    PillsWidget(title: "Fromages"),
                    PillsWidget(title: "Piments"),
                    PillsWidget(title: "Sels"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 360,
              decoration: const BoxDecoration(
                color: AppColors.yellowColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img1.png"),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: CustomTitleWithoutSubWidget(
                        title: "Légumes frais",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: const Text(
                        'TOUT AFFICHER',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.yellowColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 235,
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: CustomTitleWithoutSubWidget(
                        title: "Fruits frais",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: const Text(
                        'TOUT AFFICHER',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.yellowColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 235,
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: CustomTitleWithoutSubWidget(
                        title: "Prêt à l'emploi",
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 15),
                      child: const Text(
                        'TOUT AFFICHER',
                        style: TextStyle(
                          fontSize: 10,
                          color: AppColors.yellowColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 235,
                  padding: const EdgeInsets.only(left: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                      OfferWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
