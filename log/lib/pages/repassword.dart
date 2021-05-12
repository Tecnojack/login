import 'package:flutter/material.dart';
import 'package:log/pages/share.dart';


class Repassword extends StatefulWidget {
  @override
  _RepasswordState createState() => _RepasswordState();
}

class _RepasswordState extends State<Repassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cambio de clave"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Image.network(
                'https://cdn1.iconfinder.com/data/icons/basic-user-interface-7/24/add_contact_add_new_plus_create_contact_profile_account_user-512.png',
                width: 200, height:200),
            Card(
              elevation: 5.0,
              margin: EdgeInsets.all(6.0),
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Cambiar contraseña',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'última contraseña que recuerde',
                          hintText: 'Digite la contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                       SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Nueva contraseña',
                          hintText: 'Digite su contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[                          
                          RaisedButton(
                            child: Text(
                              'Guardar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.blue,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Shared(),
                              ),
                            ),
                          ),
                          RaisedButton(
                            child: Text(
                              'Salir',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            color: Colors.green,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Shared(),
                              ),
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
