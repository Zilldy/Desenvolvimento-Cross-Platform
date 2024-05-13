import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

// Alterado as questões
// Adicionado mais uma alternativa em cada resposta
// Alterado a quantidade de pontos de cada altenativa
class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é o seu time de futebol favotiro?',
      'respostas': [
        {'texto': 'Corinthians', 'pontuacao': 9},
        {'texto': 'São Paulo', 'pontuacao': 5},
        {'texto': 'Palmeiras', 'pontuacao': 3},
        {'texto': 'Santos', 'pontuacao': 2},
        {'texto': 'Paisandu', 'pontuacao': 7},
      ],
    },
    {
      'texto': 'Qual é a sua comida favorita?',
      'respostas': [
        {'texto': 'Yakisoba', 'pontuacao': 8},
        {'texto': 'Strogonoff', 'pontuacao': 4},
        {'texto': 'Pizza', 'pontuacao': 7},
        {'texto': 'Lasanha', 'pontuacao': 2},
        {'texto': 'Hamburguer', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual é o seu filme favorito?',
      'respostas': [
        {'texto': 'Senhor dos Anéis', 'pontuacao': 7},
        {'texto': 'Avatar', 'pontuacao': 9},
        {'texto': 'Velozes e Furiosos', 'pontuacao': 5},
        {'texto': 'Vingadores', 'pontuacao': 3},
        {'texto': 'Interestelar', 'pontuacao': 2},
      ],
    }
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  // Alterado o nome que aparece acima na aplicação do celular (Linha 70)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questionário Alpha 5'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
