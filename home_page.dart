import 'package:flutter/material.dart';
import 'package:testarpmobile/dados_usuario_card.dart';
import 'package:testarpmobile/opcoes_menu_card.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  _Home_Page createState() => _Home_Page();
}

class _Home_Page extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color(0xFFb9f6ca),
          title: Text('SISTEMA GERENCIADOR \n DE PLANTÃO', style: const TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: CircleAvatar(radius: 30, backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/504/504276.png')),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFb9f6ca),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: [
              const DadosUsuarioCard(
                nome: '**************',
                entrada: '**********',
                cpf: '*************',
                situacao: '**************',
              ),
              const SizedBox(height: 40),
              const DadosMenuCard(
                opcao: 'Cadastrar Plantão',
                icon: 'https://cdn-icons-png.flaticon.com/512/4185/4185164.png',
              ),
              const DadosMenuCard(
                opcao: 'Cadastrar Médico',
                icon: 'https://cdn-icons-png.flaticon.com/512/4185/4185164.png',
              ),
            ])));
  }
}
