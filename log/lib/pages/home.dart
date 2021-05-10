import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void cerrarSesion() => Navigator.of(context).pushReplacementNamed('/login');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aves exoticas'),
      ),
      body: Column(children: <Widget>[
        Column(children: <Widget>[
          Image.network(
              "https://i.pinimg.com/originals/bd/6c/1b/bd6c1bbb8de64a885cc4c8ef6453f57f.gif",
              width: 500,
              height: 500),
          Column(children: <Widget>[
            Text(
              'Palomas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontFamily: 'Karla'),
            ),
            Text(
              'Hermosas aves que adornan el cielo',
            ),
            RaisedButton(
              child: Text('Cerrar sesión'),
              onPressed: () => cerrarSesion(),
            ),
          ]),
        ])
      ]),
    );
  }
}
