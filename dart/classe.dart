class Produto {
  String? nome;
  double? preco;
  double? desconto;

  // Produto({this.nome = 'marmita',  this.preco = 300});

}

main() {
  var p1 = Produto(nome:"Marmita", preco: 300);
  // p1.nome = 'marmita';
  // p1.preco = 300;

  print('O produto: ${p1.nome} e preço: ${p1.preco}');
}