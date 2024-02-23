import 'package:crechau_mobile/app/utils/colors.dart';
import 'package:crechau_mobile/app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String nome;
  final TextEditingController controller;
  const InputWidget({super.key, required this.controller, required this.nome});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 8,
            child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.corPretoClaro)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: MyColors.corPretoClaro)),
                  filled: true,
                  fillColor: MyColors.corBranca,
                  label: TextWidget(
                      texto: widget.nome,
                      cor: MyColors.corPretoClaro,
                      tamanhoFonte: 14),
                )),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
