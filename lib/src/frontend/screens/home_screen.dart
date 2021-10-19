import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("BIENVENUE DANS VOTRE MARCHE"),
        centerTitle: true,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.green,
          primaryColor: Colors.red,
          textTheme: Theme.of(context).textTheme.copyWith(
                caption: const TextStyle(color: Colors.yellow),
              ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFF9FAFB),
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Rechercher",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: "Panier",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.health_and_safety_sharp),
              label: "Favoris",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Mon Compte",
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topLeft,
              textDirection: TextDirection.rtl,
              fit: StackFit.loose,
              clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  height: 400,
                ),
                Container(
                  color: const Color(0xFFFCBE6A),
                  height: 300,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  height: 75,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const SearchBar(),
                ),
                Positioned(
                  top: 90,
                  left: 10,
                  height: 75,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const CustomTitleWidget(
                    title: "NOS RAYONS",
                    subtitle: "Tous vos produits rangés par catégories",
                  ),
                ),
                Positioned(
                  top: 175,
                  left: 10,
                  height: 220,
                  width: MediaQuery.of(context).size.width - 10,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                      OfferCategoryWidget(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const CustomTitleWidget(
                title: "NOS FOURNISSEURS",
                subtitle: "Nos suggestions de fournisseurs par type de plat",
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 110,
              padding: const EdgeInsets.only(left: 5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                  FournisseurCategoryWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: const Color(0xFFEDEEEF),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const CustomTitleWidget(
                      title: "NOS MEILLEURS OFFRES",
                      subtitle:
                          "Trouvez des bons produits à des prix préférentiels",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(color: Color(0xFFEDEEEF)),
                    padding: const EdgeInsets.only(left: 10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FournisseurCategoryWidget extends StatelessWidget {
  const FournisseurCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              image: const DecorationImage(
                image: AssetImage("assets/images/img1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Pizza",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        width: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img1.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Fruits et Légumes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const OfferListWithIcon(title: "18 offres"),
            const OfferListWithIcon(title: "àpd. 1500 XOF/kg"),
            const OfferListWithIcon(title: "10 fournisseurs"),
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
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          const Icon(
            Icons.ac_unit,
            size: 15,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "$title",
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class OfferCategoryWidget extends StatelessWidget {
  const OfferCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 0),
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Fruits et Légumes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: const [
                    Icon(
                      Icons.ac_unit,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "13 Offres",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
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

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({this.title, this.subtitle, Key? key})
      : super(key: key);

  final String? title;
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 1),
            height: 33,
            width: 5,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              Text(
                "$subtitle",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: SizedBox(
        height: 40,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: 'Recherchez un produit ...',
            suffixIcon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
