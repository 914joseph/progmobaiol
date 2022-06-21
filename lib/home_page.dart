import 'package:flutter/material.dart';
import 'package:progmobile/dados_usuario_card.dart';
import 'package:progmobile/opcoes_menu_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
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
                boolfuncao: true,
              ),
              const DadosMenuCard(
                opcao: 'Cadastrar Médico',
                icon: 'https://cdn-icons-png.flaticon.com/512/4185/4185164.png',
                boolfuncao: false,
              ),
            ])));
  }
}
