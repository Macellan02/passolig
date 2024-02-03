// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Maclar extends StatelessWidget {
  final String takim1;
  final String takimAdi1;
  final String takim2;
  final String takimAdi2;
  final String tarih;
  final String gun;
  final String saat;
  final String lig;

  const Maclar({
    required this.takim1,
    required this.takimAdi1,
    required this.takim2,
    required this.takimAdi2,
    required this.tarih,
    required this.gun,
    required this.saat,
    required this.lig,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(0, 255, 255, 255),
            border: Border.all(
              color: Color.fromRGBO(212, 57, 55, 1),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
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
                          takim1,
                          width: 65,
                          height: 65,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          takimAdi1,
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
                      Text(tarih),
                      Text(gun),
                      Text(
                        saat,
                        style: TextStyle(
                            color: Color.fromRGBO(220, 40, 47, 1),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        lig,
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
                          takim2,
                          width: 65,
                          height: 65,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          takimAdi2,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
