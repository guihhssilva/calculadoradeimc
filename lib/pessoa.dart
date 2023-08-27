class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;
  String classicacao = "";

  Pessoa(this._nome, this._peso, this._altura);

  String calculaImc() {
    var imc = _peso / (_altura * _altura);

    if (imc > 0 && imc < 16) {
      classicacao = "Magreza grave";
    } else if (imc < 17) {
      classicacao = "Magreza moderada";
    } else if (imc < 18.5) {
      classicacao = "Magreza leve";
    } else if (imc < 25) {
      classicacao = "Saudável";
    } else if (imc < 30) {
      classicacao = "Sobrepeso";
    } else if (imc < 35) {
      classicacao = "Obesidade Grau I";
    } else if (imc < 40) {
      classicacao = "Obesidade Grau II (severa)";
    } else if (imc >= 40) {
      classicacao = "Obesidade Grau III (mórbida)";
    } else {
      classicacao = "Valores de peso e/ou altura inválidos";
    }
    return "$_nome seu IMC é ${imc.toStringAsFixed(2)}, $classicacao";
  }
}
