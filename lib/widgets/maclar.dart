import 'package:flutter/material.dart';

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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
