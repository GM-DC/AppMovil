import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login_page';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 15),
              Image.asset('image/iestpffaa.png'),
              SizedBox(height: 15),
              _userTexField(),
              SizedBox(height: 15),
              _passwordTexField(),
              SizedBox(height: 20),
              _bottonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _userTexField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.account_circle_sharp), // Icono de usuario
            hintText: 'Usuario', //Ingreso de usuario
            labelText: 'Usuario',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTexField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType:
              TextInputType.visiblePassword, //Que tipo de texto va ingresar
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.vpn_key_sharp), // Icono de usuario
            hintText: 'Contraseña', //Contraseña de usuario, ejemplo
            labelText: 'Contraseña', //Texto que muestra
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _bottonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return ElevatedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Ingresar'),
          ),
          onPressed: () {});
    });
  }
}
