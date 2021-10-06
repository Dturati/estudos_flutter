import './greeter.dart';
void main() {
  var g = Greeter();
  g.greeting = 'Hello my brother,';
  g.name = 'David';
  g.sayHello();
  g.printGrerting();
  var w = Welcome();
  w.name = 'David';
  sayHello(w);
}