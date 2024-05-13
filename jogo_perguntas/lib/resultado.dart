import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoReiniciarQuestionario,
      {super.key});

  // Refeito todo o sistema de pontos
  // Alterado o nível que o usuário irá receber
  // Adicionado a pontuação do usuário
  // Adicionado mais um nível para o usuário
  String get fraseResultado {
    if (pontuacao < 9) {
      return 'Nível Ferroviário!! \n Pontuação: ${pontuacao}';
    } else if (pontuacao < 13) {
      return 'Uauu, parabéns!!! \n Pontuação: ${pontuacao}';
    } else if (pontuacao < 17) {
      return 'Drogas é o clean code!! \n Pontuação: ${pontuacao}';
    } else if (pontuacao < 21) {
      return 'Maravilhoso!!! \n Pontuação: ${pontuacao}';
    } else {
      return 'Boa meu chapa!! \n Pontuação: ${pontuacao}';
    }
  }

  // Alterado o fontsize do texto da respota e do link para reiniciar
  // Alterado o texto para reiniciar o teste novamente
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Realizar novamente o teste?',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
