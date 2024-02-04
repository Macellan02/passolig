// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/maclar.dart';
import 'drawer.dart';
import 'media_drawer_mini.dart';

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
            backgroundColor: Color.fromRGBO(115, 115, 115, 1),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
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
                label: "Ayarlar ",
              ),
            ],
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Expanded(
                child: Maclar(
                  takim1: "assets/images/barca.png",
                  takimAdi1: "Barcelona",
                  takim2: "assets/images/adana.png",
                  takimAdi2: "Adana",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig3.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/Fenerbahçe.png",
                  takimAdi1: "Fenerbahçe",
                  takim2: "assets/images/hamsi.png",
                  takimAdi2: "Trabzonspor",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig3.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/adıyaman.png",
                  takimAdi1: "Adıyaman",
                  takim2: "assets/images/borsa.png",
                  takimAdi2: "B.Dortmund",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig1.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/Galatasaray.png",
                  takimAdi1: "Galatasaray",
                  takim2: "assets/images/real.png",
                  takimAdi2: "Real Madrid",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig3.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/paris.png",
                  takimAdi1: "Paris S-G",
                  takim2: "assets/images/Fenerbahçe.png",
                  takimAdi2: "Fenerbahçe",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig2.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/barca.png",
                  takimAdi1: "Barcelona",
                  takim2: "assets/images/adana.png",
                  takimAdi2: "Adana",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig3.png",
                ),
              ),
              Expanded(
                child: Maclar(
                  takim1: "assets/images/giresun.png",
                  takimAdi1: "Giresun",
                  takim2: "assets/images/hamsi.png",
                  takimAdi2: "Trabzon",
                  tarih: "11.02.2024",
                  gun: "Pazar",
                  saat: "19.00",
                  lig: "assets/images/lig3.png",
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
      //logo, search, pp
      /*appBar:  AppBar(
        backgroundColor: Color.fromRGBO(115, 115, 115, 1),
        leadingWidth: 120,
        leading: Icon(Icons.menu),
        title: Image.asset("assets/images/logo.png", height: 150, width: 150,),
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
          ),
        ],
      ), */
      //anasayfa, kartlar, biletlerim, fikstür, çıkış
      /* bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
            icon: Icon(Icons.power_settings_new),
            label: "Çıkış",
          ),
        ],
      ), */
      body: SafeArea(
        child: Column(
          children: [
            MyAppBar(),
            /* ListView(
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
                  child: Expanded(
                    //sekmeler
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
                ),
              ],
            ), */
            Expanded(
              child: buildScreen(),
            ),
            /* ListView(
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
                  child: Expanded(
                    //sekmeler
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
                ),
                //burası widget olacak olmasa da olur
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //takım arma ve adı
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 30),
                          child: Column(
                            children: [
                              Image.asset("assets/images/Fenerbahçe.png",
                                  width: 65, height: 65, fit: BoxFit.fill),
                              SizedBox(height: 10),
                              Text(
                                "Fenerbahçe",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //tarih, gün, saat ve satın al butonu
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("11 Şubat 2024"),
                              Text("Pazar"),
                              Text("19.00",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
                              SizedBox(
                                height: 10, 
                              ),
                              Image.asset("assets/images/lig3.png",
                                  width: 50, height: 50, fit: BoxFit.fill),
                              /* ElevatedButton(
                                onPressed: () {}, 
                                child: Text("Satın Al", style: TextStyle(color: Colors.white),),
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red)),
                                ), */
                            ],
                          ),
                        ),
                      ),
                      //rakip takım arma ve adı
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 30),
                          child: Column(
                            children: [
                              Image.asset("assets/images/Fenerbahçe.png",
                                  width: 65, height: 65, fit: BoxFit.fill),
                              SizedBox(height: 10),
                              Text(
                                "Fenerbahçe",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
            ), */
          ],
        ),
      ),
    );
  }

  Container CotogeryItem(String text) {
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
              child: Maclar(
                takim1: "assets/images/barca.png",
                takimAdi1: "Barcelona",
                takim2: "assets/images/adana.png",
                takimAdi2: "Adana",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Fenerbahçe.png",
                takimAdi1: "Fenerbahçe",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzonspor",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/adıyaman.png",
                takimAdi1: "Adıyaman",
                takim2: "assets/images/borsa.png",
                takimAdi2: "B.Dortmund",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Galatasaray.png",
                takimAdi1: "Galatasaray",
                takim2: "assets/images/real.png",
                takimAdi2: "Real Madrid",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/paris.png",
                takimAdi1: "Paris S-G",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig2.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/barca.png",
                takimAdi1: "Barcelona",
                takim2: "assets/images/adana.png",
                takimAdi2: "Adana",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/giresun.png",
                takimAdi1: "Giresun",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzon",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adana.png",
                takimAdi1: "Adana",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/intel.png",
                takimAdi1: "Inter Milan",
                takim2: "assets/images/real.png",
                takimAdi2: "Real Madrid",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Fenerbahçe.png",
                takimAdi1: "Fenerbahçe",
                takim2: "assets/images/giresun.png",
                takimAdi2: "Giresun",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/Galatasaray.png",
                takimAdi1: "Galatasaray",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adana.png",
                takimAdi1: "Adana",
                takim2: "assets/images/barca.png",
                takimAdi2: "Barcelona",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
      ],
    );
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
              child: Maclar(
                takim1: "assets/images/barca.png",
                takimAdi1: "Barcelona",
                takim2: "assets/images/adana.png",
                takimAdi2: "Adana",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Fenerbahçe.png",
                takimAdi1: "Fenerbahçe",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzonspor",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adıyaman.png",
                takimAdi1: "Adıyaman",
                takim2: "assets/images/borsa.png",
                takimAdi2: "B.Dortmund",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/Galatasaray.png",
                takimAdi1: "Galatasaray",
                takim2: "assets/images/real.png",
                takimAdi2: "Real Madrid",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/paris.png",
                takimAdi1: "Paris S-G",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig2.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/barca.png",
                takimAdi1: "Barcelona",
                takim2: "assets/images/adana.png",
                takimAdi2: "Adana",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/giresun.png",
                takimAdi1: "Giresun",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzon",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adana.png",
                takimAdi1: "Adana",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/intel.png",
                takimAdi1: "Inter Milan",
                takim2: "assets/images/real.png",
                takimAdi2: "Real Madrid",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/Fenerbahçe.png",
                takimAdi1: "Fenerbahçe",
                takim2: "assets/images/giresun.png",
                takimAdi2: "Giresun",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Galatasaray.png",
                takimAdi1: "Galatasaray",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adana.png",
                takimAdi1: "Adana",
                takim2: "assets/images/barca.png",
                takimAdi2: "Barcelona",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/barca.png",
                takimAdi1: "Barcelona",
                takim2: "assets/images/adana.png",
                takimAdi2: "Adana",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/Fenerbahçe.png",
                takimAdi1: "Fenerbahçe",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzonspor",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adıyaman.png",
                takimAdi1: "Adıyaman",
                takim2: "assets/images/borsa.png",
                takimAdi2: "B.Dortmund",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig1.png",
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Maclar(
                takim1: "assets/images/giresun.png",
                takimAdi1: "Giresun",
                takim2: "assets/images/hamsi.png",
                takimAdi2: "Trabzon",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/adana.png",
                takimAdi1: "Adana",
                takim2: "assets/images/Fenerbahçe.png",
                takimAdi2: "Fenerbahçe",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
            Expanded(
              child: Maclar(
                takim1: "assets/images/intel.png",
                takimAdi1: "Inter Milan",
                takim2: "assets/images/real.png",
                takimAdi2: "Real Madrid",
                tarih: "11.02.2024",
                gun: "Pazar",
                saat: "19.00",
                lig: "assets/images/lig3.png",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
