// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/menu_tile1.dart';

class Drawer1 extends StatefulWidget {
  const Drawer1({super.key});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  int expandedItem = -1;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromRGBO(115, 115, 115, 1),
        width: 220,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                  child: Container(
                      child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // Profile Pic
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromRGBO(220, 49, 58, 1),
                        width: 3,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/pp.jpg'),
                      radius: 48,
                    ),
                  ),
                ],
              ))),
              // Menü parts
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'MENÜLER',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),

              MenuTile1(
                title: 'Ana Sayfa',
                onTap: () {},
                icon: Icon(Icons.home, size: 18),
                expanded: false,
              ),

              MenuTile1(
                title: 'Kart',
                icon: Icon(Icons.credit_card, size: 18),
                expanded: true,
                children: [
                  MenuTile1(
                    title: 'Passolig Kredi Kartı',
                  ),
                  MenuTile1(
                    title: 'Passolig Banka Kart',
                  ),
                  MenuTile1(
                    title: 'Passolig Cüzdan',
                  ),
                  MenuTile1(
                    title: 'Passolig Gold',
                  ),
                ],
              ),
              MenuTile1(
                title: 'Biletlerim',
                onTap: () {},
                icon: Icon(Icons.confirmation_num, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Fikstür',
                onTap: () {},
                icon: Icon(Icons.assignment, size: 18),
                expanded: false,
              ),

              MenuTile1(
                title: 'Tartışmalar',
                icon: Icon(Icons.forum, size: 18),
                expanded: false,
              ),
              // Definition
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'GENEL',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'Sosyal Media',
                icon: Icon(Icons.public, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Ayarlar',
                icon: Icon(Icons.settings, size: 18),
                expanded: false,
              ),
              // Gece Modu
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.dark_mode,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Gece Modu"),
                      ],
                    ),
                    Switch(
                        activeTrackColor: Color.fromRGBO(220, 49, 58, 1),
                        value: false,
                        onChanged: (value) {
                          print(value);
                        }),
                  ],
                ),
              ),

              MenuTile1(
                title: 'Destek',
                icon: Icon(Icons.support_agent, size: 18),
                expanded: false,
              ),
            ],
          ),
        ));
  }
}
