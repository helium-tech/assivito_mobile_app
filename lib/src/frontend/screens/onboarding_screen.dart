import 'package:flutter/material.dart';
import 'package:concentric_transition/page_view.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({Key? key}) : super(key: key);

  @override
  _OnbaordingScreenState createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  List<dynamic> pages = [
    {
      'image':
          'https://ouch-cdn2.icons8.com/yIxQmzj1OHH3S9AiIgelaTGdpj3wApWqSqFh80arSEA/rs:fit:784:828/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMTMx/L2NmOGIzZmY4LWRh/YjEtNDdiMS1hZGQ4/LWFkMTUwZTQwNzIx/NC5wbmc.png',
    },
    {
      'image':
          'https://ouch-cdn2.icons8.com/oEXWmNUZgj3vd_T5XSJe2dTB1GFWIBeJ1QEqRWw76O8/rs:fit:784:748/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMzM1/L2Q3MjMyYzJlLTk0/NTMtNDUzMC1iZTEx/LWQ2MDZiN2RjYmFm/Yy5wbmc.png'
    },
    {
      'image':
          'https://ouch-cdn2.icons8.com/g8bZd-d4qiYuomOBWh3x61II6HlK8Ir2zp_a2cFTcCA/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDI4/LzdjMjEyYjgzLTg0/NjQtNDQzMS04NzAz/LTNkNzk1YmUyMzli/MC5wbmc.png'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        onFinish: () {},
        radius: 30,
        verticalPosition: 0.85,
        colors: const [Colors.white, Colors.blueAccent, Colors.pinkAccent],
        itemBuilder: (index, value) {
          int pageIndex = (index % pages.length);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                pages[pageIndex]['image'],
                width: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Bienvenue sur Assivito",
                style: TextStyle(
                  fontSize: 25,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
