import 'package:crechau_mobile/app/models/Cachorro.dart';

class Cuidador {
  String nome;
  String cpf;
  String telefone;
  int idade;
  List<Cachorro> petsSobCustodia;

  Cuidador({
    required this.nome,
    required this.cpf,
    required this.telefone,
    required this.idade,
    required this.petsSobCustodia,
  });
}

List<Cuidador> cuidadores = [
  Cuidador(
      nome: "Neto",
      cpf: "000.000.000-00",
      telefone: "(87) 99999-9999",
      idade: 20,
      petsSobCustodia: [cachorros[0], cachorros[1]]),
  Cuidador(
      nome: "Zé",
      cpf: "000.000.000-00",
      telefone: "(87) 99999-9999",
      idade: 19,
      petsSobCustodia: [cachorros[2]])
];
