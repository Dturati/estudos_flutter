import 'package:flutter/material.dart';
import 'package:perguntas2/questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

   final _perguntas = const [
      {
        'texto' : 'Qual é a sua cor favorita?',
        'respostas': [
            {'texto':'Preto'   , 'pontuacao':10},
            {'texto':'Vermelho', 'pontuacao':8},
            {'texto':'Verde'   , 'pontuacao':6},
            {'texto':'Branco'  , 'pontuacao':9},
        ]
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': [
          {'texto': 'Gato', 'pontuacao':10},
          {'texto': 'Cachorro', 'pontuacao':10},
          {'texto': 'Galinha', 'pontuacao':10},
          {'texto': 'Pato', 'pontuacao':10},
        ]
      },

      {
        'texto': 'Qual foi a melhor?',
        'respostas': [
          {'texto':'Andrea', 'pontuacao':10},
          {'texto':'Gleice', 'pontuacao': 8},
          {'texto':'Liliane', 'pontuacao': 7},
          {'texto':'Tainá', 'pontuacao':10},
        ]
      }
    ];


  bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
  }

  void _reponder (int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
  }

  void _reiniciar(String retorno) {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });

    print('Retorno');
  }
 
  Widget build(BuildContext context) {

     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
          title: Text('Perguntas'),
       ),
        body: temPerguntaSelecionada ? Questionario(perguntas: _perguntas,perguntaSelecionada: _perguntaSelecionada,responder: _reponder) 
        : Resultado('Parabéns ', _pontuacaoTotal, _reiniciar),
       ),
     );
   }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}