import 'package:assivito/src/frontend/screens/home_screen.dart';
import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_title_widget.dart';

class OurBestOfferScreen extends StatelessWidget {
  const OurBestOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "NOS MEILLEURES OFFRES",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 340,
                    height: 50,
                    color: Colors.grey[200],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OfferItemWidget(),
                  OfferItemWidget(),
                  OfferItemWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OfferItemWidget(),
                  OfferItemWidget(),
                  OfferItemWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OfferItemWidget(),
                  OfferItemWidget(),
                  OfferItemWidget(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTitleWithoutSubWidget(
                title: "Voir nos offres simillaires",
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 235,
                margin: const EdgeInsets.only(bottom: 10),
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
        ),
      ),
    );
  }
}

class OfferItemWidget extends StatefulWidget {
  const OfferItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<OfferItemWidget> createState() => _OfferItemWidgetState();
}

class _OfferItemWidgetState extends State<OfferItemWidget> {
  int unit = 0;

  incrementUnit() {
    setState(() {
      unit++;
    });
  }

  decrementUnit() {
    if (unit > 0) {
      setState(() {
        unit--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Stack(
        children: [
          const SizedBox(
            height: 195,
            width: 110,
          ),
          Container(
            height: 185,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: const Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 110,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img1.png"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Oignon Blanche",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                const Text(
                  "Chez Mama Africa",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 8,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "1500 XOF/kg HT",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black50,
                    fontSize: 8,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        decrementUnit();
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2)),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 16,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.greyBg,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                            child: Center(
                              child: Text(
                                unit.toString(),
                                style: const TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 16,
                            width: 0.1,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 14.9,
                            child: Center(
                              child: Text(
                                "U",
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        incrementUnit();
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(2)),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 43,
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: AppColors.yellowColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const SizedBox(
                child: Icon(
                  FontAwesomeIcons.cartPlus,
                  size: 14,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
