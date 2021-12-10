import 'package:flutter/material.dart';
import 'package:proyecto_movil/src/caja_opciones.dart';

class Historial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Desk del IESTPFFAA'),
      ),
      body: Center(
        child: Column(
          children: [
            _targeta1(),
            SizedBox(height: 15),
            _targeta1(),
            SizedBox(height: 15),
          ],
        ),
      ),
      drawer: cajaOpciones(context),
    );
  }


    Widget _targeta1() {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text("Incidencia COD:00002", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15, color: Colors.indigoAccent)),
            SizedBox(height: 10),
            Text('Fecha: 01/01/2000    14:50:30'),
            Text('Tipo de indiencia: Hardware'),
            Text('Estado: EN PROCESO', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red)),
          ],
        ),
      ),
    );
  }

  

  


}
