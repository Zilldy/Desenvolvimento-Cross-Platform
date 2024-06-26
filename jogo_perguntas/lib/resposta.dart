import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado, {super.key});

  // Alterado cor do background da seleção e cor do texto da resposta (Linhas 16 e 17)
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          foregroundColor: Color.fromARGB(166, 0, 0, 0),
        ),
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
