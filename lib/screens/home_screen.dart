// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';
import 'drawer.dart';
import 'media_drawer_mini.dart';
import '../widgets/appbar.dart';
import '../widgets/maclar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String ekranTanimla(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);

    Widget buildScreen() {
      if (device == "mobile") {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color.fromRGBO(216, 57, 52, 1),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
                icon: Icon(Icons.home),
                label: "Anasayfa",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                label: "Kartları",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number),
                label: "Biletlerim",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                label: "Fikstür",
              ),
              BottomNavigationBarItem(
                backgroundColor: Color.fromRGBO(134, 126, 126, 0.867),
                icon: Icon(Icons.settings),
                label: "Ayarlar",
              ),
            ],
          ),
          body: ListView(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/hamsi.png",
                      takimAdi1: "Trabzon",
                      takim2: "assets/images/intel.png",
                      takimAdi2: "İntel",
                      tarih: "20.02.2024",
                      gun: "salı",
                      saat: "15.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/adıyaman.png",
                      takimAdi1: "Adıyaman",
                      takim2: "assets/images/real.png",
                      takimAdi2: "Real Madrid",
                      tarih: "2.03.2024",
                      gun: "cuma",
                      saat: "22.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/milan.png",
                      takimAdi1: "Milan",
                      takim2: "assets/images/paris.png",
                      takimAdi2: "Paris",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig2.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/giresun.png",
                      takimAdi1: "Giresun",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.04.2024",
                      gun: "Pazartesi",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/borsa.png",
                      takimAdi1: "Borsa dourdmund",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      } else if (device == "tablet") {
        return Row(
          children: [
            //mini drawer kısmı
            MediaDrawerMini(),
            //ekranım
            Expanded(
              child: MidScreen(),
            ),
          ],
        );
      } else if (device == "desktop") {
        return Row(
          children: [
            //mini drawer kısmı
            Drawer1(),
            //ekranım
            Expanded(
              child: MidScreen(),
            ),
          ],
        );
      } else {
        return Row(
          children: [
            //mini drawer kısmı
            Drawer1(),
            //ekranım
            Expanded(
              child: LargeScreen(),
            ),
          ],
        );
      }
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
          child: Column(
        children: [
          MyAppBar(),
          Expanded(
            child: buildScreen(),
          ),
        ],
      )),
    );

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
}

class LargeScreen extends StatelessWidget {
  const LargeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/Fenerbahçe.png",
                      takimAdi1: "Fenerbahçe",
                      takim2: "assets/images/hamsi.png",
                      takimAdi2: "Trabzonspor",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/adıyaman.png",
                      takimAdi1: "Adıyaman",
                      takim2: "assets/images/borsa.png",
                      takimAdi2: "Borussia Dortmund",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/Galatasaray.png",
                      takimAdi1: "Galatasaray",
                      takim2: "assets/images/real.png",
                      takimAdi2: "Real Madrid",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/paris.png",
                      takimAdi1: "Paris Saint-Germain",
                      takim2: "assets/images/Fenerbahçe.png",
                      takimAdi2: "Fenerbahçe",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig2.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/paris.png",
                      takimAdi1: "Paris Saint-Germain",
                      takim2: "assets/images/Fenerbahçe.png",
                      takimAdi2: "Fenerbahçe",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig2.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/Fenerbahçe.png",
                      takimAdi1: "Fenerbahçe",
                      takim2: "assets/images/hamsi.png",
                      takimAdi2: "Trabzonspor",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/adıyaman.png",
                      takimAdi1: "Adıyaman",
                      takim2: "assets/images/borsa.png",
                      takimAdi2: "Borussia Dortmund",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MidScreen extends StatelessWidget {
  const MidScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/Fenerbahçe.png",
                      takimAdi1: "Fenerbahçe",
                      takim2: "assets/images/hamsi.png",
                      takimAdi2: "Trabzonspor",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/adıyaman.png",
                      takimAdi1: "Adıyaman",
                      takim2: "assets/images/borsa.png",
                      takimAdi2: "Borussia Dortmund",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig1.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/Galatasaray.png",
                      takimAdi1: "Galatasaray",
                      takim2: "assets/images/real.png",
                      takimAdi2: "Real Madrid",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/paris.png",
                      takimAdi1: "Paris Saint-Germain",
                      takim2: "assets/images/Fenerbahçe.png",
                      takimAdi2: "Fenerbahçe",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig2.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Column(
                  children: [
                    Maclar(
                      takim1: "assets/images/barca.png",
                      takimAdi1: "Barcelona",
                      takim2: "assets/images/adana.png",
                      takimAdi2: "Adana",
                      tarih: "11.02.2024",
                      gun: "Pazar",
                      saat: "19.00",
                      lig: "assets/images/lig3.png",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
