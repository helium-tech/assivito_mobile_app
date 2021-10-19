import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmPhoneScreen extends StatelessWidget {
  const ConfirmPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("S'INSCRIRE"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Finaliser votre inscription",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 250,
                child: Text(
                  "Renseigner ci-dessous le code à 6 caractères reçu sur votre téléphone ou par mail pour vérifier vos contacts",
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    ConfirmInputWidget(),
                    ConfirmInputWidget(),
                    ConfirmInputWidget(),
                    ConfirmInputWidget(),
                    ConfirmInputWidget(),
                    ConfirmInputWidget(),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFCBE6A),
                ),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Votre code d'identification unique (CUI)",
                    titleStyle: const TextStyle(fontSize: 17),
                    content: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          const Text(
                            "Vous allez recevoir le CUI par mail/téléphone. Il vous permettra de se connecter et publier sur notre plateforme en tant que fournisseur de fruits et légumes ainsi que d’autres produits de restauration.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              child: const Text(
                                "CONTINUER",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: const Text(
                    "VALIDER",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: "Code pas reçu ?"),
                    TextSpan(
                        text: "  Renvoyer le code",
                        style: TextStyle(color: Colors.red))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmInputWidget extends StatelessWidget {
  const ConfirmInputWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 100,
        width: 60,
        padding: const EdgeInsets.only(right: 5),
        child: TextField(
          maxLines: 3,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
