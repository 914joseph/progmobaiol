import 'package:flutter/material.dart';

class DadosUsuarioCard extends StatefulWidget {
  final String nome;
  final String cpf;
  final String entrada;
  final String situacao;

  const DadosUsuarioCard({
    Key? key,
    required this.nome,
    required this.cpf,
    required this.entrada,
    required this.situacao,
  }) : super(key: key);

  @override
  _DadosUsuarioCardState createState() => _DadosUsuarioCardState();
}

class _DadosUsuarioCardState extends State<DadosUsuarioCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(width: 4),
          color: const Color(0xFFA6A6A6),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  child: const Icon(Icons.person),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: const Color(0xFFA6A6A6),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nome:  ${widget.nome}',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          Text(
                            'Entrada: ${widget.entrada}',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CPF: ${widget.cpf}',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          Text(
                            'Situação: ${widget.situacao}',
                            style: TextStyle(fontSize: 10.0),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
