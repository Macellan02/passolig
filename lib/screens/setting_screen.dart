// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

   bool darkMode = false;

   changeThemeMode(bool isDark) async {
    SharedPreferences memory = await SharedPreferences.getInstance();
    setState(() {
      darkMode = isDark;
    });
   }

  loadSettings()async{
    SharedPreferences memory = await SharedPreferences.getInstance();

    var d = memory.getBool("darkMode");

    if (d == null){
      changeThemeMode(false);
    }
    else {
      darkMode = d;
    }

    setState(() {
      
    });
  }

  @override
  void initState() {
    loadSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromRGBO(115, 115, 115, 1),
        title: Text("Ayarlar"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Image.asset("assets/images/logo.png", height: 140, width: 140,),
          ),],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark Mode:"),
                  Switch(value: darkMode, 
                  onChanged: (value) {
                    setState(() {
                      changeThemeMode(value);
                    });
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}