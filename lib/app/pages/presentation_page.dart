import 'package:crechau_mobile/app/models/Cachorro.dart';
import 'package:crechau_mobile/app/models/Cuidador.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({super.key});

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
              color: MyColors.corSplash,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: TextWidget(
                texto: "Total de animais: ${cachorros.length}",
                cor: MyColors.corBranca,
                tamanhoFonte: 30),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
                color: MyColors.corSplash,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextWidget(
                  texto: "Cuidadores disponíveis: ${cuidadores.length}",
                  cor: MyColors.corBranca,
                  tamanhoFonte: 30),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
