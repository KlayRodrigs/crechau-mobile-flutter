import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/input_widget.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AdicionarPage extends StatefulWidget {
  const AdicionarPage({super.key});

  @override
  State<AdicionarPage> createState() => _AdicionarPageState();
}

class _AdicionarPageState extends State<AdicionarPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController racaController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.corBranca,
      appBar: AppBar(
        backgroundColor: MyColors.corBranca,
      ),
      body: Column(
        children: [
          // Image.asset("assets/images/patinha.jpg"),
          Form(
            child: Column(
              children: [
                InputWidget(
                  controller: nomeController,
                  nome: "Nome",
                ),
                InputWidget(
                  controller: racaController,
                  nome: "Raça",
                ),
                InputWidget(
                  controller: idadeController,
                  nome: "Idade",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ElevatedButton(
          style: ButtonStyle(
              minimumSize: const MaterialStatePropertyAll(Size(200, 50)),
              shape: MaterialStateProperty.all(LinearBorder.none),
              padding: const MaterialStatePropertyAll(EdgeInsets.all(0)),
              backgroundColor: MaterialStatePropertyAll(MyColors.corAzul)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: TextWidget(
              texto: "CADASTRAR", cor: MyColors.corBranca, tamanhoFonte: 16)),
    );
  }
}
