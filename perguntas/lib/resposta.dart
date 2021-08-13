
import 'dart:ffi';

import 'package:flutter/material.dart';

class Resposta  extends StatelessWidget {

  final String texto;
  final Color cor;
  final void Function() quandoSelecionado;

  Resposta({this.texto = '', required this.cor, required this.quandoSelecionado});


  @override
  Widget build(BuildContext context) {
      return Container(
        width: double.infinity,
        child: TextButton(
                child: Text(texto), 
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: cor,
                  elevation: 1,
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                    fontStyle: FontStyle.italic
                  )
              ),
              onPressed: quandoSelecionado,
          ),
      );
  }
}