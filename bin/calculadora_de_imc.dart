import 'dart:io';
import 'package:calculadora_de_imc/pessoa.dart';

void main(List<String> arguments) {
  String nome;
  double? peso;
  double? altura;

  //Adicionei algumas validações básicas pra caso o dados estejam discrepantes
  do {
    print("Digite seu nome: ");
    nome = stdin.readLineSync()!;
  } while (nome.length < 3);
  do {
    print("Digite seu peso: ");
    peso = double.tryParse(stdin.readLineSync()!);
  } while (peso == null || peso < 15);
  do {
    print("Digite sua altura: ");
    altura = double.tryParse(stdin.readLineSync()!);
  } while (altura == null || altura > 2.5 || altura < 0.8);

  Pessoa pessoa;

  pessoa = Pessoa(nome, peso, altura);

  var resultado = pessoa.calculaImc();
  print(resultado);
}
