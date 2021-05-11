import 'package:flutter/material.dart';
import 'package:log/pages/login.dart';
import 'package:log/pages/home.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/home': (BuildContext context) => HomePage(),
    '/login': (BuildContext context) => Login(),
  };
}
