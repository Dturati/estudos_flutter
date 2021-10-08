class Pessoa {
  String? nome;
  String? _cpf;


  set cpf(cpf) {
    this._cpf = cpf;
  }

  get cpf {
    return this._cpf;
  }
}