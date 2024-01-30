// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MediaDrawerMini extends StatelessWidget {
  const MediaDrawerMini({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.home),
          Icon(Icons.credit_card),
          Icon(Icons.confirmation_number),
          Icon(Icons.assignment),
          Icon(Icons.settings),
          Icon(Icons.power_settings_new),
        ],
      ),
    );
  }
}
