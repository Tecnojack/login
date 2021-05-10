import 'package:flutter/material.dart';
import 'package:log/pages/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String emailTrue = 'fluter@accenture.com';
  String passwordTrue = '12345678';

  String emailForm = '';
  String passwordForm = '';

  // void iniciarSesion() {
  //   if (emailTrue.toLowerCase() == emailForm.toLowerCase() &&
  //       passwordTrue == passwordForm) {
  //     Navigator.of(context).restorablePushNamed('/home');
  //   }
  // }

  // Future<bool> alertError({String title, String message}) {
  //   return showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('$title'),
  //           content: Text('$message'),
  //           actions: <Widget>[
  //             FlatButton(
  //               child: Text('Aceptar'),
  //               onPressed: () => Navigator.of(context).pop(),
  //             )
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png',
                width: 500),
            Card(
              elevation: 5.0,
              margin: EdgeInsets.all(6.0),
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Login',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Digite su email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'No has llenado este campo';
                          } else {
                            if (value.contains(' ')) {
                              return 'Digite un correo valido';
                            } else {
                              return null;
                            }
                          }
                        },
                        onSaved: (String value) =>
                            emailForm = value.replaceAll(' ', ''),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          hintText: 'Digite su contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return 'No has llenado este campo';
                          } else {
                            if (value.length < 6) {
                              return 'Contraseña demasiado corta';
                            } else {
                              return null;
                            }
                          }
                        },
                        onSaved: (String value) => passwordForm = value,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RaisedButton(
                            child: Text(
                              'Iniciar sesión',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blue,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
