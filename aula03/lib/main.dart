import 'package:flutter/material.dart';
import 'package:untitled/screens/create_product.screen.dart';
import 'package:untitled/screens/list_products.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:CreateProductScreen(
          onPress: () {
            //print("clicou no botão");
          },
          onPressString: (value) {
            print(value)
          }),
    );
  }
}
