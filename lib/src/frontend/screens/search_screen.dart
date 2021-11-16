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
        title: const Text("RECHERCHER"),
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 50,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Résultats pour "tomates"',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.bottomSheet(
                        const SearchFilterBottomSheet(),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(
                          Icons.account_tree_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 198,
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
      height: 300,
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
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchFilterFormInputWidget extends StatelessWidget {
  const SearchFilterFormInputWidget({this.title, this.inputLabel, Key? key})
      : super(key: key);

  final String? title;
  final String? inputLabel;

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
                left: 5,
                bottom: 10,
              ),
              child: Text(
                "$title",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.grey[300],
                hintText: '$inputLabel',
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
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
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
                      fontSize: 18,
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
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
