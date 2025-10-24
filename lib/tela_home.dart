

import 'package:aula1/banco/usuarioDAO.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class telaHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => telaHomeState();
}

class telaHomeState extends State<telaHome>{
  final nome = UsuarioDAO.usuarioLogado.nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, $nome!'),
        actions: [
          Icon(Icons.construction_rounded)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_sharp), label: 'carrinho'),
        BottomNavigationBarItem(icon: Icon(Icons.savings_rounded), label: 'descontos'),
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: 'meus pedidos'),
      ]),
    );
  }
  
  
}