import 'package:flutter/material.dart';
import 'package:ma_boucle/screens/register/name.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/register/name',
    routes: {
      '/register/name': (context) => RegisterNameScreen(),
    },
    theme: ThemeData().copyWith(
      colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.blueGrey),
    ),
  ));
}
