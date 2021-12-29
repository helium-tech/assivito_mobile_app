import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:assivito/src/frontend/widgets/custom_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "RECHERCHER",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            child: Container(
              height: 230,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SearchFilterFormInputWidget(
                    title: "Nom du produit",
                    inputLabel: "Ex: boeuf, tomates",
                  ),
                  Row(
                    children: const [
                      SearchFilterFormInputWidget(
                        title: 'Votre localisation',
                        inputLabel: 'Ex: Adidogome',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SearchFilterFormInputWidget(
                        title: 'Type de marché',
                        inputLabel: 'Ex: Local / Importé',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.yellowColor,
                    ),
                    child: const Center(
                      child: Text(
                        "VALIDER",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: const CustomTitleWidget(
              title: "OFFRES RECENTES",
              subtitle: "Nos nouveautés sont par ici",
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 400 - 45,
            child: ListView(
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
            ),
          )
        ],
      ),
    );
  }
}

class SearchFilterBottomSheet extends StatelessWidget {
  const SearchFilterBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SearchFilterFormInputWidget(
            title: "Nom du produit",
            inputLabel: "Ex: boeuf, tomates",
          ),
          Row(
            children: const [
              SearchFilterFormInputWidget(
                title: 'Votre localisation',
                inputLabel: 'Ex: Quartier ou ville',
              ),
              SizedBox(
                width: 10,
              ),
              SearchFilterFormInputWidget(
                title: 'Type de marché',
                inputLabel: 'Ex: local ou supermarché',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFFCBE6A),
            ),
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                "VALIDER LA RECHERCHE",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchFilterFormInputWidget extends StatelessWidget {
  const SearchFilterFormInputWidget(
      {this.title, this.inputLabel, this.icon, Key? key})
      : super(key: key);

  final String? title;
  final String? inputLabel;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 0,
                bottom: 5,
              ),
              child: Text(
                "$title",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hintText: '$inputLabel',
                    hintStyle: const TextStyle(fontSize: 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchOfferWidget extends StatelessWidget {
  const SearchOfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7.5),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tomates grappe",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      OfferListWithIcon(title: "18 offres"),
                      OfferListWithIcon(title: "àpd. 1500 XOF/kg"),
                      OfferListWithIcon(title: "10 fournisseurs"),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferListWithIcon extends StatelessWidget {
  const OfferListWithIcon({
    this.title,
    Key? key,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Row(
        children: [
          const Icon(
            Icons.ac_unit,
            size: 15,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            "$title",
            style: const TextStyle(
              fontSize: 10,
              color: AppColors.black50,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
