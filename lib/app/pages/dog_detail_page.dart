import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DogDetailPage extends StatefulWidget {
  final String nome, raca, imagePath, nomeTutor, sexo;
  final int idade;
  const DogDetailPage(
      {super.key,
      required this.nome,
      required this.raca,
      required this.imagePath,
      required this.idade,
      required this.nomeTutor,
      required this.sexo});

  @override
  State<DogDetailPage> createState() => _DogDetailPageState();
}

class _DogDetailPageState extends State<DogDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.corAzulEscuro,
      appBar: AppBar(
        foregroundColor: MyColors.corBranca,
        backgroundColor: MyColors.corAzulEscuro,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              widget.idade > 11
                  ? Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: MyColors.corBranca,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          widget.sexo == "Macho"
                              ? Icons.elderly_outlined
                              : Icons.elderly_woman,
                          color: widget.sexo == "Macho"
                              ? MyColors.corAzul
                              : MyColors.corRosa,
                        ),
                      ),
                    )
                  : const Text(""),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: widget.sexo == "Macho"
                        ? MyColors.corAzul
                        : MyColors.corRosa,
                  ),
                  height: 300,
                  width: 300,
                ),
              ),
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      widget.imagePath,
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Nome: ${widget.nome}",
                cor: MyColors.corBranca,
                tamanhoFonte: 24),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Raça: ${widget.raca}",
                cor: MyColors.corBranca,
                tamanhoFonte: 18),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Idade: ${widget.idade} anos",
                cor: MyColors.corBranca,
                tamanhoFonte: 18),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Sociável: sim",
                cor: MyColors.corBranca,
                tamanhoFonte: 18),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Tutor: ${widget.nomeTutor}",
                cor: MyColors.corBranca,
                tamanhoFonte: 18),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextWidget(
                texto: "Sexo: ${widget.sexo}",
                cor: MyColors.corBranca,
                tamanhoFonte: 18),
          ),
          const Divider(),
          const Spacer(),
          Center(
            child: TextButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(MyColors.corSplash)),
              onPressed: () {},
              icon: Icon(
                Icons.call,
                color: MyColors.corAzulClaro,
              ),
              label: TextWidget(
                  texto: "FALAR COM TUTOR(A)",
                  cor: MyColors.corBackground,
                  tamanhoFonte: 22),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
