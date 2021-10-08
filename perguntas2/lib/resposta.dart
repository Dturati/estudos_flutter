import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() resposta;
  
  Resposta(this.texto, this.resposta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        child: Text(texto),
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blue,
          textStyle: const TextStyle(fontSize: 25)
        ),
        onPressed: resposta)
    );
  }
}