import 'package:flutter/material.dart';
import 'package:mobil_programlama_vize/screens/setting_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/user_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      if(ThemeMode.system == ThemeMode.dark){
        changeThemeMode(true);
      }
      else {
        changeThemeMode(false);
      }
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


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passolig',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => UserScreen(),
        '/settings': (context) => SettingScreen(),

      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
