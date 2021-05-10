import 'package:flutter/material.dart';
import 'package:log/widgets/Error404.dart';
import 'package:log/routes/routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: getApplicationRoutes(),
      initialRoute: '/login',
     onUnknownRoute: ( RouteSettings settings ){
        return MaterialPageRoute(builder: (BuildContext context) => Error404Page());
      },
    );
  }
}