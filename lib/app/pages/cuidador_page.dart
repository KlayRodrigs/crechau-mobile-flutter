import 'package:crechau_mobile/app/models/Cuidador.dart';
import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CuidadorPage extends StatefulWidget {
  const CuidadorPage({super.key});

  @override
  State<CuidadorPage> createState() => _CuidadorPageState();
}

class _CuidadorPageState extends State<CuidadorPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cuidadores.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            tileColor: MyColors.corAzulClaro,
            leading: Icon(Icons.person, color: MyColors.corBackground),
            title: TextWidget(
                texto: cuidadores[index].nome,
                cor: MyColors.corPretoClaro,
                tamanhoFonte: 18),
            subtitle: TextWidget(
                texto: cuidadores[index].telefone,
                cor: MyColors.corPretoClaro,
                tamanhoFonte: 14),
          ),
        );
      },
    );
  }
}
