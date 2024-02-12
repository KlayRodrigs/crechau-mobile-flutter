import 'package:crechau_mobile/app/models/Cachorro.dart';
import 'package:crechau_mobile/app/models/Cuidador.dart';
import 'package:crechau_mobile/app/pages/adicionar.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: OpenContainer(
        transitionDuration: const Duration(milliseconds: 500),
        openBuilder: (context, action) => const AdicionarPage(),
        closedElevation: 6,
        closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(200))),
        closedColor: MyColors.corAzul,
        closedBuilder: (context, action) => SizedBox(
          height: 60,
          width: 60,
          child: Center(
              child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.onSecondary,
          )),
        ),
      ),
      body: _index == 0
          ? ListView.builder(
              itemCount: cuidadores.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    tileColor: MyColors.corAzulClaro,
                    trailing: const Icon(
                      Icons.visibility,
                      size: 20,
                    ),
                    leading: Icon(Icons.person, color: MyColors.corBranca),
                    title: TextWidget(
                        texto: cuidadores[index].nome,
                        cor: MyColors.corPreto,
                        tamanhoFonte: 18),
                    subtitle: TextWidget(
                        texto: cuidadores[index].telefone,
                        cor: MyColors.corPreto,
                        tamanhoFonte: 14),
                  ),
                );
              },
            )
          : ListView.builder(
              itemCount: cachorros.length,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: const Icon(
                    Icons.visibility,
                    size: 20,
                  ),
                  leading: const Icon(Icons.pets),
                  title: Text(cachorros[index].nome),
                  subtitle: Text(cachorros[index].raca),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        height: 78,
        shape: const CircularNotchedRectangle(),
        color: MyColors.corAzul,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            InkWell(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              onTap: () {
                setState(() {
                  _index = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    color: MyColors.corBranca,
                    size: 30,
                  ),
                  TextWidget(
                      texto: "Cuidador",
                      cor: MyColors.corBranca,
                      tamanhoFonte: 16)
                ],
              ),
            ),
            const Spacer(
              flex: 5,
            ),
            InkWell(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              onTap: () {
                setState(() {
                  _index = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    Icons.pets,
                    color: MyColors.corBranca,
                    size: 30,
                  ),
                  TextWidget(
                      texto: "Pets", cor: MyColors.corBranca, tamanhoFonte: 16)
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
