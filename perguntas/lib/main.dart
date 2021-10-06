import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';
import './resposta.dart';

main()  => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

   final _perguntas = const [
      {
        'texto': 'Qual é a sua cor',
        'respostas': ['Preto', 'Vermelho', 'Branco']
      },
      {
        'texto': 'qual é o seu animal',
        'respostas': ['Gato','Rato','Morcego']
      },
      {
        'texto': 'Qual a linguagem favorita',
        'respostas': ['Python', 'PHP', 'Dart']
      }
    ];

   void _responder() {
      setState(() {
          _perguntaSelecionada++;
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
          responder: _responder,
          perguntaSelecionada: _perguntaSelecionada,
        ) : Resultado(texto: 'Parabéns'),
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