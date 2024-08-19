import 'package:flutter/material.dart';
import 'package:untitled/screens/widgets/item_custom.widget.dart';
import '../usecase/get_products.usecase.dart';

class ListProductsScreen extends StatefulWidget {
  final String title;

  const ListProductsScreen({
    super.key,
    required this.title,
  });

  @override
  State<ListProductsScreen> createState() => _ListProductsScreenState();
}

class _ListProductsScreenState extends State<ListProductsScreen> {
  late List<String> _products;
  late List<int> _quantities;
  late GetProductsUseCase _getSalesListUseCase;

  @override
  void initState() {
    _getSalesListUseCase = GetProductsUseCase();
    _products = _getSalesListUseCase.products;
    _quantities = _getSalesListUseCase.quantities;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: _products.length,
          itemBuilder: (context, index) {
            return const ItemCustomWidget();
          }),
    );
  }
}
