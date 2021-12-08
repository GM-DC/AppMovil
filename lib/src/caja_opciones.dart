import 'package:flutter/material.dart';

Drawer cajaOpciones(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          margin: EdgeInsets.only(bottom: 0.0),
          accountName: Text("ADMINISTRADOR"),
          accountEmail: Text("Flores Pariona, Gian Marco"),
          currentAccountPicture: CircleAvatar(
            child: Icon(
              Icons.account_circle_outlined,
              size: 70.0,
            ),
          ),
        ),
        ListTile(
          title: const Text('Registro un reporte'),
          leading: Icon(Icons.addchart_sharp),
          onTap: () {
            ////////////////////////////////////////////
            Navigator.pushNamed(context, '/registro_indidencia');
            /////////////////////////////////////////////
          },
        ),
        ListTile(
          title: const Text('Estado de reporte'),
          leading: Icon(Icons.addchart_sharp),
          onTap: () {
            ////////////////////////////////////////////
            Navigator.pushNamed(context, '/historial');
            /////////////////////////////////////////////
          },
        ),
        ListTile(
          title: const Text('Historial de reporte'),
          leading: Icon(Icons.upcoming_outlined),
          onTap: () {
            ////////////////////////////////////////////
            Navigator.pushNamed(context, '/historial');
            /////////////////////////////////////////////
          },
        ),
      ],
    ),
  );
}

/*
  decoration: BoxDecoration(
  color: Colors.blue,
  ),

*/