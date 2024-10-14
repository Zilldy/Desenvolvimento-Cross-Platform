import 'package:flutter/material.dart';
import '../../domain/animal.dart';
import '../../util/snippets.dart';

class AnimalsCreateScreen extends StatefulWidget {
  const AnimalsCreateScreen({super.key});

  @override
  State<AnimalsCreateScreen> createState() => _AnimalsCreateScreenState();
}

class _AnimalsCreateScreenState extends State<AnimalsCreateScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _raceController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  _onPressed() {
    final animal = Animal(
        name: _nameController.text,
        race: _raceController.text,
        age: _ageController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Pets"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _nameController,
              decoration: inputDecoration(label: "Informe Nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _raceController,
              decoration: inputDecoration(label: "Informe raça"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _ageController,
              decoration: inputDecoration(label: "Informe a idade"),
            ),
          ),
          ElevatedButton(onPressed: _onPressed, child: const Text("Entrar")),
        ],
      ),
    );
  }
}
