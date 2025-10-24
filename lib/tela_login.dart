import 'package:aula1/banco/usuarioDAO.dart';
import 'package:aula1/exemplo.dart';
import 'package:aula1/tela_home.dart';
import 'package:flutter/material.dart';

class telaLogin extends StatefulWidget{
  @override
  State<telaLogin> createState() => telaLoginState();
}

class telaLoginState extends State<telaLogin>{

  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Meu Ifood'),
       backgroundColor: Colors.blue,
     ),
     body: Container(
       width: double.infinity,
       color: Colors.lightBlue,
       child: Column(
          children: [
            Image.asset('assets/logo.png',

            ),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              width: 250,
              child: TextFormField(
                  controller: usuarioController,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Usuário',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                  controller: senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async{

                  final sucesso = await UsuarioDAO.autenticar(usuarioController.text, senhaController.text);

                  if(sucesso){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => telaHome())
                    );
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Usuário e/ou senha inválido.',
                                      style: TextStyle(color: Colors.black87),
                                        ),
                          backgroundColor: Colors.amber,
                      )
                    );
                  }

                },
                child: Text(' Entrar ', style: TextStyle(fontSize: 16, color: Colors.lightBlue),)
            )
          ],
       ),
     ),

   );
  }
}