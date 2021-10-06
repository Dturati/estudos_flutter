import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(ExpensesApp());


class ExpensesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage  extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final _transactions = [
    Transaction(id: 't1', title: 'Novo tênis de corrida', value: 310.76, date: DateTime.now()),
    Transaction(id: 't2', title: 'Conta de luz', value: 200.30, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Container(
           width: double.infinity,
           child: const  Card(
            color: Colors.blue,
            child: Text('Gráfico'),
            elevation: 5,
          ),  
         ),
         TransactionList(_transactions),
          Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Column(
                    children: <Widget>[
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                          labelText: 'Título'
                        ),
                      ),
                      TextField(
                          controller: valueController,
                          decoration: InputDecoration(
                          labelText: 'Valor (R\$)'
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              print(titleController.text);
                              print(valueController.text);
                            },
                            style: TextButton.styleFrom(backgroundColor: Colors.purple),
                            child: const Text('Nova Transação',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}