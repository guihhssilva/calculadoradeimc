import 'package:calculadora_de_imc/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('calcula IMC', () {
    var pessoa = Pessoa("Guilherme", 64, 1.8);
    expect(pessoa.calculaImc(), "Guilherme seu IMC é 19.75, Saudável");
  });

  test('calcula IMC', () {
    var pessoa = Pessoa("Fulano", 155, 1.6);
    expect(pessoa.calculaImc(),
        "Fulano seu IMC é 60.55, Obesidade Grau III (mórbida)");
  });
}
