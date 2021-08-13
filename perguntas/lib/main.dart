import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main()  => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

   void _responder() {
      setState(() {
          _perguntaSelecionada++;
      });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
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


    List<String>  respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
    List<Widget> widgets = respostas.map((t) => Resposta(texto: t, cor: Colors.green, quandoSelecionado: _responder)).toList();

    // for (String resp in perguntas[_perguntaSelecionada].cast()['respostas']) {
    //     widgets.add(Resposta(texto: resp,cor: Colors.green,quandoSelecionado: _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
           ...widgets
          ],
        ),
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