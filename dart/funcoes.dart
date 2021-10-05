int soma(int a, int b, int Function(int, int) fn) {
  int c = fn(a, b);
  return c;
}

main() {
  int func(a,b) =>  a + b; 

  print('Valor da soma é: ${soma(2, 2, func)}');
}