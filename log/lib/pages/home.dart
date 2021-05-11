import 'package:flutter/material.dart';
import 'package:log/pages/login.dart';
import 'package:log/pages/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void cerrarSesion() => Navigator.of(context).pushReplacementNamed('/login');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick y marty',
      home: Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              Image.network(
                  'https://static.wikia.nocookie.net/familyguyfanon/images/6/60/Rick_and_Morty.png',
                  width: 350,
                  height: 300)
            ],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              Container(
                  child: Center(
                      child: Column(
                children: [
                  Container(
                      width: 400,
                      child: Column(children: [
                        SizedBox(height: 10),
                        Container(
                            child: Column(children: <Widget>[
                          Image.network(
                              'https://www.kindpng.com/picc/m/43-437689_transparent-rick-and-morty-png-rick-and-morty.png',
                              width: 500,
                              height: 500),
                          Text('Rick Sánchez',
                              style:
                                  TextStyle(fontSize: 30, fontFamily: "arial")),
                          Text(
                              'Rick Sánchez es un ejemplo del típico "científico loco". Es un genio, pero es irresponsable, alcohólico, egoísta, un poco depresivo y con poca cordura. Rick por diferentes razones termina mudándose a la casa de su hija Beth y en ese momento se encuentra con su nieto Morty; un chico de 14 años de edad, tímido y no muy listo.',
                              style:
                                  TextStyle(fontSize: 20, fontFamily: "arial")),
                        ]))
                      ]))
                ],
              )))
            ],
          ),
        ),
        drawer: _getDrawer(context),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.menu),
          onPressed: _float,
        ),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Row(children: <Widget>[
              Image.network(
                  'https://i.pinimg.com/originals/4b/3e/02/4b3e0279e016cc145240de10c8a06fb6.png'),
              Container(
                child: Column(children: <Widget>[
                  Text(
                    'Jackson Palacios',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    'Fan destacado',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  Text(
                    'Personaje Favorito',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Ricky',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
                  ),
                  RaisedButton(
                    child: Text(
                      'Cerrar sesión',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.green,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    ),
                  ),
                ]),
              ),
            ])),
        Text(
          'Ricky Sánchez',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Raleway-Regular",
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Image.network(
            'https://www.kindpng.com/picc/m/43-437689_transparent-rick-and-morty-png-rick-and-morty.png',
            width: 70,
            height: 70),
        RaisedButton(
          child: Text(
            'Ver biografía',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.green,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
        Text(
          'Morty Smith ',
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Raleway-Regular",
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Image.network(
            'https://www.kindpng.com/picc/m/43-437689_transparent-rick-and-morty-png-rick-and-morty.png',
            width: 70,
            height: 70),
        RaisedButton(
          child: Text(
            'Ver biografía',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          color: Colors.green,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          ),
        ),
      ]),
    );
  }

  void _onTap() {
    print("Hola");
  }

  void _onLongPress() {
    print("Boton Rised Responde ");
  }

  void _onPressed() {
    print("Boton Flat Responde ");
  }

  void _onPressedOtLN() {
    print("Boton Outline Responde ");
  }
}

void _float() {}

void _add() {
  print("HOLA");
}
