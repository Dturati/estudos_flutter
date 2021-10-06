import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final String texto;

  Resultado({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Text(texto,
          style: TextStyle(fontSize: 28),
        ),
      ),
    );
  }
}