import "./Pessoa.dart";

main() {
  var p1 = Pessoa();
  p1.nome = "David";
  p1.cpf = '017.534.911-85';

  print("Nome ${p1.nome} e CPF:${p1.cpf}");
}