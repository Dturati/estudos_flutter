main() {
  int a = 3;
  
  double b = 3.1;

  var c = 'Dart é fortemente tipado';
  
  String nome = 'David';
  
  print(c);

  var nomes = ['David', 'Wan'];
  
  nomes.add('Marinete');

  print(nomes);
  
  print(nomes.elementAt(0));
  
  print(nomes[1]);

  var conjunto = {0,1,2,3,4, 5, 5};
  print(conjunto.length);

  print(conjunto is Set);

  conjunto.add(10);

  print(conjunto);

  Map<String, double> notasAluno = {
    'Ana': 9.7,
    'Bia': 9.2,
    'Carlos': 7.8
  };

  print(notasAluno);

  for (var valor in notasAluno.entries) {
    print('valor ${valor.key } = ${valor.value}');
  }

  dynamic sobre = 'David';
  sobre = 10;

  print(sobre);

}