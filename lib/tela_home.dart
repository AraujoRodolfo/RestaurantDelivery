

import 'package:aula1/banco/usuarioDAO.dart';
import 'package:aula1/restaurante.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

import 'banco/resturanteDAO.dart';

class telaHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => telaHomeState();
}

class telaHomeState extends State<telaHome>{
  final nome = UsuarioDAO.usuarioLogado.nome;

  List<Restaurante>  restaurantes = [];

  Future<void> carregarRestaurantes() async{
    final lista = await RestauranteDAO.listarTodos();
    setState(() {
      restaurantes = lista;
    });
  }

  @override
  void initState(){
    super.initState();
    carregarRestaurantes();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, $nome!'),
        actions: [
          Icon(Icons.construction_rounded)

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 150,
                child: ImagensSlider()
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child:ListView.builder(
                  itemCount: restaurantes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    final r = restaurantes[index];
                    return ElevatedButton(
                        onPressed: (){},
                        child: Text(r.nome ?? 'Sem nome')
                    );
                  }
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'carrinho'),
        BottomNavigationBarItem(icon: Icon(Icons.savings_rounded), label: 'descontos'),
        BottomNavigationBarItem(icon: Icon(Icons.delivery_dining), label: 'meus pedidos'),
      ]),
    );
  }
}

class ImagensSlider extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
     return ListView(
       scrollDirection: Axis.horizontal,
       children: [
         for (final color in Colors.primaries)
           Container(width: 160, color: color),
       ],
     );
  }


}
