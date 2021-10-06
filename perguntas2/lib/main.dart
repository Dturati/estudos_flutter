import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas  = [
    'Qual é a sua cor favorita!',
    'Qual é o seu animal favorito!'
  ];

  void reponder ({data: 'Sem resposta'}) {
    print("resposta ${data}");
  }

  void Function() imprime({data: ''}) {
    return () {
      print("Teste ${data}");
    };
  }

   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
          title: Text('Perguntas'),
       ),
        body: Column(
          children: [
            Text(perguntas.elementAt(0)),
            TextButton(child: Text('Resposta 1'), onPressed: imprime(data:'Resposta 1')),
            TextButton(child: Text('Resposta 2'), onPressed: reponder),
            TextButton(child: Text('Resposta 3'), onPressed: reponder),
          ],
        ),
       ),
     );
   }
}