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
      //logo, serch, pp
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(115, 115, 115, 1),
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Image.asset("assets/images/logo.png"),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Color.fromRGBO(226, 25, 54, 1),
            size: 30,
          ),
          SizedBox(
            width: 14,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/pp.jpg"),
              radius: 23,
            ),
          )
        ],
      ),
      //anasayfa, kartlar, biletlerim , fisikür ,çıkış
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
              icon: Icon(Icons.home),
              label: "Anasayfa"), //BottomNavigationBarItemBarıtem
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
              icon: Icon(Icons.credit_card),
              label: "Kartlarım"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
              icon: Icon(Icons.confirmation_number),
              label: "Biletlerim"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
              icon: Icon(Icons.assignment),
              label: "Fikstür"),
          BottomNavigationBarItem(
              backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
              icon: Icon(Icons.power_settings_new),
              label: "ÇIKIŞ"),
        ],
      ),

      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //sekmeler için container
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(115, 115, 115, 1),
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromRGBO(226, 25, 54, 1)))),
              width: double.infinity,
              height: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
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
                  ),
                ],
              ),
            ),
            Maclar()
          ],
        ),
      ),
    );
  }

  Container CotogeryItem(
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3, left: 12, right: 12),
      margin: const EdgeInsets.only(top: 15, bottom: 3, left: 4, right: 4),
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
}

class Maclar extends StatelessWidget {
  const Maclar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          // TAKIM ARMA VE ADI
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Fenerbahçe.png",
                      width: 65,
                      height: 65,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Fenerbahçe",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
          // SAAT LİG GÜN BİLGİLERİ
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("22 Ocak 2022"),
                  Text("Pzar"),
                  Text(
                    "18.00",
                    style: TextStyle(
                        color: Color.fromRGBO(220, 40, 47, 1),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    "assets/images/lig1.png",
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
          ),

          // Rakip takım adı ve arması
          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/adıyaman.png",
                      width: 65,
                      height: 65,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Adıyaman",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
