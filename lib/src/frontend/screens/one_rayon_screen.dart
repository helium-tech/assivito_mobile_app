import 'package:flutter/material.dart';

import 'our_fournisseurs_screen.dart';
import 'search_screen.dart';

class OneRayonScreen extends StatelessWidget {
  const OneRayonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("FRUITS ET LEGUMES"),
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
              height: 30,
            ),
            Column(
              children: const [
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
                SearchOfferWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
