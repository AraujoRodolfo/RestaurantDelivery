import 'package:aula1/tela_login.dart';
import 'package:flutter/material.dart';
import 'exemplo.dart';

void main() {
  runApp(meuApp());
}


class meuApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu app Flutter',
      home: telaLogin(),
    );
  }

}