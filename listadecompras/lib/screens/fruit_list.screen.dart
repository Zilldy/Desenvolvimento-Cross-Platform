import 'package:flutter/material.dart';
import 'package:untitled/screens/fruit_create.screen.dart';
import 'package:untitled/screens/widget/content_get.widget.dart';
import 'package:untitled/snnipets.dart';

import 'controller/fruit_get.controller.dart';

class ListFruit extends StatefulWidget {
  const ListFruit({super.key});

  @override
  State<ListFruit> createState() => _ListFruitState();
}

class _ListFruitState extends State<ListFruit> {
  late FruitGetController _getController;

  @override
  void initState() {
    _getController = FruitGetController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de Frutas")),
      body: ContentGetWidget(controller: _getController),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openRoute(
            context,
            FruitCreateScreen(
              onPress: (fruit) {
                _getController.addFruit(fruit);
              },
            ),
          );
        },
        child: const Icon(Icons.plus_one_sharp),
      ),
    );
  }
}
