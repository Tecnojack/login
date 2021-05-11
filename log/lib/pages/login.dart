import 'package:flutter/material.dart';
import 'package:log/pages/share.dart';
import 'package:log/pages/register.dart';

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
                'https://pngimg.com/uploads/rick_morty/rick_morty_PNG24.png',
                width: 300, height:300),
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
                                  builder: (context) => Shared()),
                            ),
                          ),
                           RaisedButton(
                            child: Text(
                              'Registrarse',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blue,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()),
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
