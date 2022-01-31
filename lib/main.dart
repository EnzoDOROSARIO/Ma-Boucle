import 'package:flutter/material.dart';
import 'package:ma_boucle/screens/register/name.dart';
import 'package:ma_boucle/screens/Home/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeScreen(),
      '/register/name': (context) => RegisterNameScreen(),
    },
    theme: ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blueGrey),
    ),
  ));
}
