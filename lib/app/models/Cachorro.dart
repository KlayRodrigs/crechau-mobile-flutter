class Cachorro {
  int id;
  String nome, raca, imagePath, nomeTutor, sexo;
  bool sociavel;
  int idade;

  Cachorro(
      {required this.id,
      required this.nome,
      required this.nomeTutor,
      required this.sexo,
      required this.raca,
      required this.idade,
      required this.imagePath,
      required this.sociavel});
}

List<Cachorro> cachorros = [
  Cachorro(
    id: 1,
    nome: "Thor",
    imagePath: "assets/images/doberman.jpg",
    raca: "Doberman",
    nomeTutor: "Klayvert",
    sexo: "Macho",
    idade: 4,
    sociavel: true,
  ),
  Cachorro(
    id: 2,
    nome: "Aquiles",
    imagePath: "assets/images/german_shepherd.jpeg",
    raca: "Pastor-Alemão",
    nomeTutor: "Ainara",
    sexo: "Macho",
    idade: 12,
    sociavel: true,
  ),
  Cachorro(
    id: 3,
    nome: "Matadora",
    nomeTutor: "Neto",
    sexo: "Fêmea",
    imagePath: "assets/images/dogo.jpg",
    raca: "Dogo argentino",
    idade: 12,
    sociavel: false,
  ),
];
