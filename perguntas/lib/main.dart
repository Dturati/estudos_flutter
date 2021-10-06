import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main()  => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  
   final _perguntas = const [
      {
        'texto': 'Qual é a sua cor',
        'respostas': [
            {'texto': 'Preto', 'pontuacao': 10},
            {'texto': 'Vermelho', 'pontuacao': 5},
            {'texto': 'Branco', 'pontuacao': 2}
          ]
      },

      {
        'texto': 'qual é o seu animal',
        'respostas': [
            {'texto': 'Gato', 'pontuacao': 10},
            {'texto': 'Rato', 'pontuacao': 5},
            {'texto': 'Morcego', 'pontuacao': 2}
          ]
      },

      {
        'texto': 'Qual a linguagem favorita',
        'respostas': [
            {'texto': 'Python', 'pontuacao':10},
            {'texto': 'PHP', 'pontuacao': 5},
            {'texto': 'Dart', 'pontuacao':2}
          ]
      }
    ];

   void _responder(int pontuacao) {
      setState(() {
          _perguntaSelecionada++;
          _pontuacaoTotal += pontuacao;
      });
    }

    void _reiniciarQuestionario() {
      setState(() {
        _perguntaSelecionada = 0;
        _pontuacaoTotal = 0;
      });
    }

    bool get temPerguntaSelecionada {
      return _perguntaSelecionada < _perguntas.length;
    }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')
        ),
        body: temPerguntaSelecionada ? Questionario(
          perguntas: _perguntas,
          QuandoResponder: _responder,
          perguntaSelecionada: _perguntaSelecionada,
        ) : Resultado(texto: '', pontuacao: _pontuacaoTotal, quandoReiniciarQuestionario: _reiniciarQuestionario),
      ),
      );
  }

}

class PerguntaApp extends StatefulWidget {

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}