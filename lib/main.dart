import 'package:flutter/material.dart';
import 'package:proyecto_movil/src/historial.dart';
import 'package:proyecto_movil/src/home.dart';
import 'package:proyecto_movil/src/login_page.dart';

import 'package:proyecto_movil/src/registro_incidencia.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App', 
      debugShowCheckedModeBanner: false,
      routes: {
        '/login_page' : (context) => LoginPage(),
        '/registro_indidencia' : (context) => RegistroIncidencia(),
        '/home' : (context) => home(),
        '/historial' : (context) => Historial(),
      },
      initialRoute: '/login_page',
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