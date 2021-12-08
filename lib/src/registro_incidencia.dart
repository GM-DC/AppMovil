import 'package:flutter/material.dart';

class RegistroIncidencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegistroIncidenciaState();
}

class _RegistroIncidenciaState extends State<RegistroIncidencia> {
  String dropdownValue = 'Instalaciones';

  DateTime fecha = new DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
    DateTime.now().hour,
    DateTime.now().minute,
    DateTime.now().second,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro de Incidencia"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              _CajaCodigo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _CajaCodigo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ////////////////////////////////////////////////////
        TextField(
          enabled: false,
          controller: TextEditingController()..text = '000001',
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(Icons.download_for_offline_sharp),
            hintText: ' Codigo Incidencia',
          ),
        ),
        ////////////////////////////////////////////////////
        TextField(
          enabled: false,
          controller: TextEditingController()..text = '$fecha',
          autofocus: true,
          keyboardType: TextInputType.datetime,
          decoration: const InputDecoration(
              icon: Icon(Icons.date_range_outlined),
              hintText: 'Fecha',
              labelText: 'DD/MM/AA'),
        ),
        ////////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Container(
            child: DropdownButton(
                items: <String>[
                  'Instalaciones',
                  'Hardware',
                  'Software',
                  'Servicios'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                icon: Icon(Icons.keyboard_arrow_down),
                elevation: 5,
                underline: Container(
                  height: 3,
                  color: Colors.blue,
                ),
                style: TextStyle(color: Colors.black),
                value: dropdownValue,
                onChanged: (String? valueIn) {
                  setState(() {
                    dropdownValue = valueIn!;
                  });
                }),
          ),
        ),
        //////////////////////////////////////////////////////
        TextField(
          autofocus: true,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            icon: Icon(Icons.date_range_outlined),
            hintText: 'Codigo Equipo',
            labelText: 'Ingresar codigo Equipo',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextField(
            maxLines: 4,
            decoration: InputDecoration(
                hintText: 'Descripción', border: OutlineInputBorder()),
          ),
        ),
        //////////////////////////////////////////////////////
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 100,
          ),
          child: Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: Text('Enviar Incidencia'),
                onPressed: () {},
              )),
        ),
      ],
    );
  }
}
