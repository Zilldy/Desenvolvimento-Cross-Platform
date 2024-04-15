import './venda.dart';
import './cliente.dart';
import './venda_item.dart';
import './produto.dart';
void main(List < String > args) {
  var venda = Venda(
    cliente: Cliente(nome: 'Francisco Cardoso', cpf: '123.456.789-11'),
    itens: < VendaItem > [
      VendaItem(quantidade: 30, produto: Produto(codigo: 1, nome: 'Lápis', preco: 6.00, desconto: 0.5)),
      VendaItem(quantidade: 8, produto: Produto(codigo: 123, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
      VendaItem(quantidade: 100, produto: Produto(codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5)),
      VendaItem(quantidade: 250, produto: Produto(codigo: 23, nome: 'Caneta Bic', preco: 1.50, desconto: 0.15)),
    ]);
  print("O valor total da venda é: ${venda.valorTotal}");
}