import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new PerguntasApp());

class PerguntasApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
    ));
  }
}
