import 'package:flutter/material.dart';
import 'package:proyecto_movil/services/login_services.dart';

//import 'package:http/http.dart' as http;
//import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final txt_usuario = TextEditingController();
  final txt_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 15),
                _imagen(),
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
      ),
    );
  }

  Widget _imagen() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50, 
        horizontal: 50),
      alignment: Alignment.center,
      child: Image.asset('image/iestpffaa.png'),
    );
  }

  Widget _userTexField() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextField(
          controller: txt_usuario,
          decoration: InputDecoration(
              hintText: 'Usuario',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
    );
  }

  Widget _passwordTexField() {
    return Container(
      padding: EdgeInsets.all(15),
      child: TextField(
          obscureText: true,
          controller: txt_password,
          decoration: InputDecoration(
              hintText: 'Contraseña',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
    );
  }

  Widget _bottonLogin() {
    return ElevatedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
          child: Text('Ingresar'),
        ),
        onPressed: () {
          String usuario = txt_usuario.text;
          String password = txt_password.text;

          if (usuario == '' || password == '') {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('ALERTA'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [Text('Verifique sus datos')],
                      ),
                    ),
                  );
                });
          } else {
            final loginSvr =
                loginServices().login(usuario, password).then((value) {
              if (value) {
                Navigator.pushNamed(context, '/home');
              } else {
                print("error");
              }
            });
          }

          //Navigator.pushNamed(context, '/home');
        });
  }
}
