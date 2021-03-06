// import 'package:dunevo/helpers/constants.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

import 'search_screen.dart';
import 'favorite_screen.dart';
import 'cart_screen.dart';
import 'account_screen.dart';
import 'home_screen.dart';

//import 'package:flat_icons_flutter/flat_icons_flutter.dart';

List<Widget> bottomNavBarItemsView = [
  const HomeViewWidget(),
  const SearchScreen(),
  const CartScreen(),
  const FavoriteScreen(),
  AccountScreen(),
];
//

List bottomNavBarIconList = const [
  Icons.home,
  Icons.search,
  Icons.card_travel,
  Icons.health_and_safety_sharp,
  Icons.person,
];

List<String> bottomNavBarIconNameList = const [
  "Accueil",
  "Protéger",
  "Compte",
  "Compte",
  "Compte",
];

class AppView extends StatefulWidget {
  static const String routeName = "/main-app";

  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: bottomNavBarItemsView[_currentIndex],

        /*IndexedStack(

            index: _selectedIndex,

            children: bottomNavBarItems,

          )*/

        bottomNavigationBar: CustomBottomNavigationBar(
          iconList: bottomNavBarIconList,
          iconNameList: bottomNavBarIconNameList,
          onChanged: (val) {
            setState(() {
              _currentIndex = val;
            });
          },
          defaultSelectedIndex: 0,
        ),

        /*appBar: AppBar(

          automaticallyImplyLeading: false,

          backgroundColor: BaseColor.xxBlack,

          title: Text(appViewBarTitle[_currentIndex],

              style: TextStyle(color: Colors.white, fontSize: 12)),

        ),*/
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;

  final ValueChanged<int> onChanged;

  final List iconList;

  final List<String> iconNameList;

  const CustomBottomNavigationBar(
      {Key? key,
      required this.defaultSelectedIndex,
      required this.onChanged,
      required this.iconList,
      required this.iconNameList})
      : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int _selectedIndex;

  late List _iconList;

  late List<String> _iconNameList;

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;

    _iconList = widget.iconList;

    _iconNameList = widget.iconNameList;

    //print(_selectedIndex);

    //print(_iconList);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], _iconNameList[i], i));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(IconData icon, String name, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(index);

        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
          height: 50,
          color: Colors.white,
          width: MediaQuery.of(context).size.width / _iconList.length,
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1,
            child: Container(
              decoration: index == _selectedIndex
                  ? const BoxDecoration(
                      color: Colors.black,

                      //border: Border.all(width: 4, color: Colors.green),

                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)))
                  : const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.blue,

                    margin: const EdgeInsets.only(top: 5),

                    child: Icon(
                      icon,
                      size: 25,
                      color:
                          index == _selectedIndex ? Colors.white : Colors.black,
                    ),
                  ),

                  /*index == _selectedIndex

                      ? Text(

                          name,

                          textAlign: TextAlign.center,

                          style: const TextStyle(

                            color: Colors.white,

                            fontWeight: FontWeight.w600,

                            fontSize: 10,

                          ),

                        )

                      : Text(

                          name,

                          textAlign: TextAlign.center,

                          style: const TextStyle(

                            color: BaseColors.xxBlack,

                            fontWeight: FontWeight.w600,

                            fontSize: 10,

                          ),

                        )*/
                ],
              ),
            ),
          )),
    );
  }
}
