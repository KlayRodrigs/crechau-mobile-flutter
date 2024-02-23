import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final String texto;
  final Color cor;
  final double tamanhoFonte;
  const TextWidget(
      {super.key,
      required this.texto,
      required this.cor,
      required this.tamanhoFonte});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto,
      style: TextStyle(
          color: widget.cor,
          fontSize: widget.tamanhoFonte,
          fontFamily: "FiraSans"),
    );
  }
}
