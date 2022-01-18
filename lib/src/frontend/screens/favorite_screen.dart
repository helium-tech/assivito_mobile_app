import 'package:assivito/src/frontend/screens/search_screen.dart';
import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('FAVORIS'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: const [
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
              FavoriteOfferWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteOfferWidget extends StatelessWidget {
  const FavoriteOfferWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Container(
            height: 100,
            // color: Colors.green,
          ),
          Positioned(
            top: 8,
            left: 0,
            child: Container(
              height: 90,
              width: MediaQuery.of(context).size.width - 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/img1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        "Tomates grappe nouvel arrivage ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: const [
                          Text(
                            "Chez Mama Africa",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          FiveStarWidget(),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            OfferListWithIcon(title: "1500 XOF/kg"),
                            SizedBox(
                              width: 2,
                            ),
                            OfferListWithIcon(title: "20 kg"),
                            SizedBox(
                              width: 4,
                            ),
                            OfferListWithIcon(title: "Adakpamé Lomé"),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: const Center(
                child: Icon(
                  FontAwesomeIcons.trash,
                  size: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FiveStarWidget extends StatelessWidget {
  const FiveStarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double starSize = 10;
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            Icons.star,
            size: starSize,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: starSize,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star,
            size: starSize,
            color: Colors.yellow,
          ),
          Icon(
            Icons.star_border,
            size: starSize,
          ),
          Icon(
            Icons.star_border,
            size: starSize,
          ),
        ],
      ),
    );
  }
}
