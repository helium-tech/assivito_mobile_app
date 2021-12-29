import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_title_widget.dart';
import '../widgets/star_list_widget.dart';
import 'home_screen.dart';

class MerchantDetailScreen extends StatefulWidget {
  const MerchantDetailScreen({Key? key}) : super(key: key);

  @override
  State<MerchantDetailScreen> createState() => _MerchantDetailScreenState();
}

class _MerchantDetailScreenState extends State<MerchantDetailScreen> {
  var activeTab = "offer";
  setActiveBar(activaTabId) {
    setState(() {
      activeTab = activaTabId;
    });
  }

  Widget renderActiveTabBarWidget() {
    if (activeTab == 'offer') {
      return const MarchandOffersWidget();
    } else if (activeTab == 'contact') {
      return const MarchandContactsWidget();
    } else if (activeTab == 'avis') {
      return const MarchandAvisWidget();
    } else {
      return const MarchandOffersWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              width: width,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img1.png"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Mama Africa Store SARL",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    "Fournisseurs de fruits et légumes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const StarListWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: width - 30,
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setActiveBar('offer');
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 45,
                            width: (width - 30) / 3,
                            decoration: BoxDecoration(
                              color: activeTab == 'offer'
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Offres',
                                style: TextStyle(
                                  color: activeTab == 'offer'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setActiveBar('contact');
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 45,
                            width: (width - 30) / 3,
                            decoration: BoxDecoration(
                              color: activeTab == 'contact'
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                  color: activeTab == 'contact'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setActiveBar('avis');
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 45,
                            width: (width - 30) / 3,
                            decoration: BoxDecoration(
                              color: activeTab == 'avis'
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Avis',
                                style: TextStyle(
                                  color: activeTab == 'avis'
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            renderActiveTabBarWidget()
          ],
        ),
      ),
    );
  }
}

class MarchandOffersWidget extends StatelessWidget {
  const MarchandOffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: CustomTitleWithoutSubWidget(
            title: "Fruits et légumes",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
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
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: CustomTitleWithoutSubWidget(
            title: "Autres produits",
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
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
    );
  }
}

class MarchandContactsWidget extends StatelessWidget {
  const MarchandContactsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      color: Colors.transparent,
      child: Column(children: [
        Row(
          children: const [
            Icon(
              FontAwesomeIcons.phoneAlt,
              size: 15,
            ),
            SizedBox(width: 10),
            Text(
              '+228 90 45 14 12 / +228 99 98 12 10',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              FontAwesomeIcons.envelope,
              size: 15,
            ),
            SizedBox(width: 10),
            Text(
              'mama.africastor@gmail.com',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              FontAwesomeIcons.locationArrow,
              size: 15,
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 230,
              child: Text(
                'Rue lomnava - magazin en face de la pharmacie bon secours, Adakpamé, Lomé',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: 330,
          height: 230,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: Text("Map situant l’adresse fournisseur"),
          ),
        )
      ]),
    );
  }
}

class MarchandAvisWidget extends StatelessWidget {
  const MarchandAvisWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img1.png"),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Restaurant la Bodéga",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Avédji, Lomé",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.orange,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Text(
                            "Il y à 2 jours",
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id morbi ultrices odio interdum phasellus in ultricies consectetur. Velit consequat ligula quis tortor vel cum integer penatibus.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                FontAwesomeIcons.heart,
                                size: 12,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "20 J'aime",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                FontAwesomeIcons.comment,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Réagir",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: AppColors.greyBg,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomTitleWithoutSubWidget(title: "Laisser un avis"),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    minLines: 6,
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: 'Ajouter votre message',
                      contentPadding: const EdgeInsets.only(top: 5, left: 10),
                      hintStyle: const TextStyle(
                        fontSize: 10,
                        color: AppColors.black50,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const StarListWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 330,
                    decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        'SOUMETTRE',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
