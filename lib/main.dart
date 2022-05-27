import 'package:flutter/material.dart';
import 'package:pratica_03/screens/cadastro.dart';
import 'package:pratica_03/screens/lista.dart';
import 'package:pratica_03/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '@Compras',
      home: Login(),
    );
  }
}
