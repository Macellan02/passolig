// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //states
  /* String email = "";
  String name = "";
  String surname = "";
  String password = ""; */
  String gender = "";
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController nameController = TextEditingController(text: "");
  TextEditingController surnameController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    readData();
  }

  //zaman alan işlemlerde async kullanıyoruz. uygulamanın kitlenmesini engeller
  //kaydet
  storeData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    storage.setString("email", emailController.text);
    storage.setString("password", passwordController.text);
    storage.setString("name", nameController.text);
    storage.setString("surname", surnameController.text);
    storage.setString("gender", "");

    //data save icon kısmı denebilir
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Veriler Kaydedildi"),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
      ),
    );
  }

  //oku
  readData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    var email = storage.getString("email");
    var name = storage.getString("name");
    var surname = storage.getString("surname");
    var password = storage.getString("password");
    var gender = storage.getString("gender");

    setState(() {
      emailController.text = email ?? "";
      nameController.text = name ?? "";
      surnameController.text = surname ?? "";
      passwordController.text = password ?? "";
      this.gender = gender ?? "";
    });
  }

  //sil
  clearData() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            Icon(Icons.warning),
            Gap(10),
            Text("Onayla"),
          ],
        ),
        content: Text("Verileri silmek istediğinizden emin misiniz?"),
        actions: [
          ElevatedButton(
            onPressed: () async {
              final SharedPreferences storage =
                  await SharedPreferences.getInstance();
              storage.clear();
            },
            child: Text("Evet"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text("Hayır"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(115, 115, 115, 1),
        title: Image.asset(
          "assets/images/logo.png",
          height: 150,
          width: 150,
        ),
        /* actions: [
          InkWell(
            onTap: clearData,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.delete),
            ),
          ),
          InkWell(
            onTap: storeData,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.save),
            ),
          ),
        ], */
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Email: "),
                  Gap(23),
                  Expanded(
                      child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade700,
                        )),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      controller: emailController,
                      /* onChanged: (value){
                        setState(() {
                          email = value;
                        });}, */
                    ),
                  )),
                ],
              ),
              Gap(20),
              Row(
                children: [
                  Text("Şifre: "),
                  Gap(30),
                  Expanded(
                      child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey.shade700,
                        )),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      controller: passwordController,
                    ),
                  )),
                ],
              ),
              Gap(40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: storeData,
                  child: Text("Giriş Yap"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    onPrimary: Colors.white,
                  ),
                ),
              ),
              Gap(30),
              Text(
                "or Login with",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("google"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(219, 68, 55, 10),
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("facebook"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(51, 89, 165, 0.984),
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("X"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/register');
                      print("tıklandı");
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
