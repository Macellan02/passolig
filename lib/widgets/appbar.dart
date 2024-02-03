// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
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

  Widget appBar(String device) {
    if (device == "mobile") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
          //search icon ve pp
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.search,
                color: Color.fromRGBO(226, 25, 54, 1),
                size: 30,
              ),
              SizedBox(
                width: 14,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/register'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else if (device == "tablet") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
          //search icon ve pp
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.search,
                color: Color.fromRGBO(226, 25, 54, 1),
                size: 30,
              ),
              SizedBox(
                width: 14,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/register'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else if (device == "desktop") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //menu icon ve logo
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.menu),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
          // search kısmı
          Container(
            width: 300,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          //pp
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 14,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/register'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //menu icon ve logo
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(Icons.menu),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 150,
                width: 150,
              ),
            ],
          ),
          // search kısmı
          Container(
            width: 300,
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade700,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          //pp
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 14,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed('/register'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranTanimla(screenWidth);
    return Container(
      height: 60,
      color: Color.fromRGBO(115, 115, 115, 1),
      child: appBar(device),
    );
  }
}
