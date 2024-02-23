import 'package:animations/animations.dart';
import 'package:crechau_mobile/app/models/Cachorro.dart';
import 'package:crechau_mobile/app/pages/dog_detail_page.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CaesPage extends StatefulWidget {
  const CaesPage({super.key});

  @override
  State<CaesPage> createState() => _CaesPageState();
}

class _CaesPageState extends State<CaesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cachorros.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: OpenContainer(
            closedElevation: 2,
            transitionDuration: const Duration(milliseconds: 500),
            closedColor: MyColors.corAzulEscuro,
            closedShape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.transparent)),
            closedBuilder: (context, action) => ListTile(
              tileColor: MyColors.corSplash,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  cachorros[index].imagePath,
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              title: TextWidget(
                  texto: cachorros[index].nome,
                  cor: MyColors.corBranca,
                  tamanhoFonte: 18),
              subtitle: TextWidget(
                  texto: cachorros[index].raca,
                  cor: MyColors.corBranca,
                  tamanhoFonte: 14),
              trailing: cachorros[index].idade > 11
                  ? Icon(
                      cachorros[index].sexo == "Macho"
                          ? Icons.elderly_outlined
                          : Icons.elderly_woman,
                      color: MyColors.corBranca,
                    )
                  : const Text(""),
            ),
            openBuilder: (context, action) => DogDetailPage(
                nomeTutor: cachorros[index].nomeTutor,
                sexo: cachorros[index].sexo,
                idade: cachorros[index].idade,
                imagePath: cachorros[index].imagePath,
                nome: cachorros[index].nome,
                raca: cachorros[index].raca),
          ),
        );
      },
    );
  }
}
