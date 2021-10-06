import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final String texto;
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado({required this.texto, required this.pontuacao, required this.quandoReiniciarQuestionario});

  String get fraseResultado {
     print(pontuacao);
      if (pontuacao < 8) {
          return 'Parabéns!';
      } else if(pontuacao < 15) {
          return 'Você é bom';
      } else if(pontuacao < 16) {
        return 'Impressionanete';
      } else {
        return('Nível Jedi!');
      }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(fraseResultado,
              style: TextStyle(fontSize: 28),
            ),
          ),
          TextButton(
            onPressed: quandoReiniciarQuestionario, 
            child: Text('Reiniciar'),
            style: TextButton.styleFrom(
              primary: Colors.red,
              textStyle: TextStyle(fontSize: 28, color: Colors.red)
            ),
          )
        ],
      ),
    );
  }
}