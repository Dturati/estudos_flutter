class Welcome {
  var name; 
  printGrerting () => print("Hello my brother ${name}");
}

void sayHello(Welcome welcome) {
  welcome.printGrerting();
}

class Greeter implements Welcome {
  var greeting;
  var _name;

  printGrerting() => print("Hello my brother ${name}");

  sayHello() {
    print("$greeting ${this._name}");
  }

  get name => _name;

  set name(value) => _name = value;
}