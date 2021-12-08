import 'package:flutter/material.dart';
import 'package:proyecto_movil/src/caja_opciones.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Desk del IESTPFFAA'),
      ),
      body: Center(
        child: Text("My pagina"),
      ),
      drawer: cajaOpciones(context),
    );
  }

  Widget _targeta() {
    return Card();
  }
}
