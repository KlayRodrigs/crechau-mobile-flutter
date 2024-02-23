import 'package:crechau_mobile/app/pages/caes_page.dart';
import 'package:crechau_mobile/app/pages/cuidador_page.dart';
import 'package:crechau_mobile/app/pages/presentation_page.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> lista = [
    const PresentationPage(),
    const CaesPage(),
    const CuidadorPage(),
  ];

  final List<String> cabecalhos = ["Início", "Pets", "Cuidadores"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.corAzulEscuro,
      appBar: AppBar(
        backgroundColor: MyColors.corAzulEscuro,
        title: TextWidget(
          texto: cabecalhos[_index],
          cor: MyColors.corBranca,
          tamanhoFonte: 24,
        ),
      ),
      body: lista[_index],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          unselectedItemColor: MyColors.corAzulEscuro,
          fixedColor: MyColors.corAzulEscuro,
          type: BottomNavigationBarType.shifting,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
          currentIndex: _index,
          items: const [
            BottomNavigationBarItem(
              label: "Início",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Pets",
              icon: Icon(
                Icons.pets,
              ),
            ),
            BottomNavigationBarItem(
              label: "Cuidadores",
              icon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
