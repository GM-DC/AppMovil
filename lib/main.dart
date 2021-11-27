import 'package:flutter/material.dart';
import 'package:proyecto_movil/src/home.dart';
import 'package:proyecto_movil/src/login_page.dart';
//import 'package:proyecto_movil/src/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', 
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}



/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', 
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id : (context) => LoginPage(),
      },
    );
  }
}

*/