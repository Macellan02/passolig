// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(115, 115, 115, 1),
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(226, 25, 54, 1)))),
              width: double.infinity,
              height: 145,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(width: 130, "assets/images/logo.png"),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Color.fromRGBO(226, 25, 54, 1),
                              size: 38,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/pp.jpg"),
                              radius: 24,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  //sekmeler
                  Row(
                    children: [
                      CotogeryItem("Futbol"),
                      CotogeryItem("Basketbol"),
                      CotogeryItem("Voleybol"),
                      CotogeryItem("Box"),
                      CotogeryItem("Atletizm"),
                      CotogeryItem("Tenis"),
                      CotogeryItem("Hentbol"),
                      CotogeryItem("Güreş"),
                      CotogeryItem("Teakwondo"),
                      CotogeryItem("Golf"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
            ),
          ),
          BottomMenu(),
        ],
      ),
    );
  }

  Container CotogeryItem(
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 7, bottom: 7, left: 12, right: 12),
      margin: const EdgeInsets.only(top: 25, bottom: 2, left: 4, right: 4),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: Color.fromRGBO(226, 25, 54, 1),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget BottomMenu() {
    return Container(
      width: double.infinity,
      height: 68,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(216, 216, 216, 0.87),
            width: 2.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Ana Sayfa", Icons.home, true),
          BottomMenuItem("Kartlarım", Icons.credit_card, false),
          BottomMenuItem("Biletlerim", Icons.confirmation_number, false),
          BottomMenuItem("Fikstür", Icons.assignment, false),
          BottomMenuItem("Çıkış", Icons.power_settings_new, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(115, 115, 115, 1);

    if (active) {
      renk = Color.fromRGBO(226, 25, 54, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 30,
            color: renk,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: renk,
            ),
          )
        ],
      ),
    );
  }
}

Widget Music_sm(
  String photo,
  String title,
  String artist,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              photo,
              width: 75,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                Text(artist,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 13,
                    )),
              ],
            ),
          ],
        ),
        Icon(
          Icons.more_vert,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ],
    ),
  );
}
