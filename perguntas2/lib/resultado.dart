import 'package:flutter/material.dart';

class Resultado  extends StatelessWidget {

  final String? texto;
  final int? pontuacao;

  final void Function(String) reiniciar;
  
  Resultado(this.texto, this.pontuacao, this.reiniciar);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
                texto.toString() + pontuacao.toString(),
                style: TextStyle(fontSize: 42, color: Colors.red),
            ),
        ),
        TextButton(onPressed: () => reiniciar('Retorno'), child: Text('Reiniciar'), style: TextButton.styleFrom(backgroundColor: Colors.red, primary: Colors.white))
      ],
    );
  }
}