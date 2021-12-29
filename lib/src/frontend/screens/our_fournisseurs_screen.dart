import 'package:assivito/src/frontend/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/star_list_widget.dart';

class OurFournisseursScreen extends StatelessWidget {
  const OurFournisseursScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("NOS FOUNISSEURS"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 285,
                        height: 80,
                        color: Colors.transparent,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 10),
                        width: 285,
                        decoration: BoxDecoration(
                          color: AppColors.yellowColor.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text(
                          'Cette page vous permet de rechercher les fournisseurs appropriés selon les plats que vous proposez dans votre restaurant.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Icon(
                              FontAwesomeIcons.info,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Choisissez votre plat",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Ex: Pizza",
                    suffixIcon: const Icon(
                      FontAwesomeIcons.list,
                      size: 15,
                      color: Colors.black,
                    ),
                    hintStyle: const TextStyle(fontSize: 12),
                    fillColor: AppColors.greyBg,
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
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
              const SizedBox(
                height: 30,
              ),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
              const FournisseurItemWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FournisseurItemWidget extends StatelessWidget {
  const FournisseurItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      width: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(5),
              //   bottomLeft: Radius.circular(5),
              // ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img1.png"),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 90,
            width: 0.2,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Mama Africa Store SARL",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Fournisseur fruits et légumes",
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.black50,
                ),
              ),
              const Text(
                "Adakpamé, Lomé",
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.black50,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const StarListWidget(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.moneyBill,
                        size: 12,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "àpd 1500 XOF/kg",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black50,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.weight,
                        size: 12,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "20 kg",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black50,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PillsWidget extends StatelessWidget {
  const PillsWidget({
    @required this.title,
    this.isActive = false,
    Key? key,
  }) : super(key: key);

  final String? title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 27,
      width: 101,
      decoration: BoxDecoration(
        color: isActive ? AppColors.yellowColor : AppColors.greyBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "$title",
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
