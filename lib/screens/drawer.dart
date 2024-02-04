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
              DrawerHeader(child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Profile Pic
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 3,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/pp.jpg',),
                        radius: 48,
                      ),
                    ),
                  ],
                )
              )),
              // Base Parts
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'MENÜLER',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'Anasayfa',
                onTap: () {},
                icon: Icon(Icons.home, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Kartlar',
                icon: Icon(Icons.credit_card, size: 18),
                expanded: true,
                children: [
                  MenuTile1(
                    title: 'Passolig Kredi Kartı',
                  ),
                  MenuTile1(
                    title: 'Passolig Banka Kartı',
                  ),
                  MenuTile1(
                    title: 'Passolig Cüzdan Kart',
                  ),
                ],
              ),
              MenuTile1(
                title: 'Biletlerim',
                icon: Icon(Icons.confirmation_number, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Fikstür',
                icon: Icon(Icons.assignment, size: 18),
                expanded: false,
              ),
              // Definition
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'GENEL',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'Ayarlar',
                icon: Icon(Icons.settings, size: 18),
                expanded: false,
              ),
            ],
          ),
        )
    );
  }
}