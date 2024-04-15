import './produto.dart';

class VendaItem {
  Produto ? produto;
  int quantidade;
  double ? _preco;
  VendaItem({
    this.produto,
    this.quantidade = 1
  });

  double get preco {
    if (produto != null) {
      return produto!.precoComDesconto;
    }
    return _preco!;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}