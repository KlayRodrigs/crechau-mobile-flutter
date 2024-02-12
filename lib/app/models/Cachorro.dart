class Cachorro {
  String nome;
  bool sociavel;
  String raca;
  int idade;

  Cachorro(
      {required this.nome,
      required this.raca,
      required this.idade,
      required this.sociavel});
}

List<Cachorro> cachorros = [
  Cachorro(nome: "Thor", raca: "Pitbull", idade: 4, sociavel: true),
  Cachorro(nome: "Aquiles", raca: "Pastor-Alemão", idade: 5, sociavel: true),
  Cachorro(nome: "Matador", raca: "Pinscher", idade: 12, sociavel: false),
];
