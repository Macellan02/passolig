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
                        color: Colors.grey.shade200,
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
              // Base Parts
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'BASE PARTS',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'Reservation',
                icon: Icon(Icons.menu, size: 18),
                expanded: true,
                children: [
                  MenuTile1(
                    title: 'Hotel Reservation',
                  ),
                  MenuTile1(
                    title: 'Archive',
                  ),
                  MenuTile1(
                    title: 'Statistics',
                  ),
                  MenuTile1(
                    title: 'Board',
                  ),
                ],
              ),
              MenuTile1(
                title: 'Only Transfer',
                onTap: () {},
                icon: Icon(Icons.favorite, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Operations',
                icon: Icon(Icons.notifications, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Reporting',
                icon: Icon(Icons.person, size: 18),
                expanded: false,
                children: [
                  MenuTile1(
                    title: 'Hotel Reservation',
                  ),
                  MenuTile1(
                    title: 'Archive',
                  ),
                  MenuTile1(
                    title: 'Statistics',
                  ),
                  MenuTile1(
                    title: 'Board',
                  ),
                ],
              ),
              // Definition
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Text(
                  'DEFINITION',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              MenuTile1(
                title: 'General',
                icon: Icon(Icons.settings, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Hotels',
                icon: Icon(Icons.hotel, size: 18),
                expanded: false,
              ),
              MenuTile1(
                title: 'Tours',
                icon: Icon(Icons.tour, size: 18),
                expanded: false,
              ),
            ],
          ),
        ));
  }
}
