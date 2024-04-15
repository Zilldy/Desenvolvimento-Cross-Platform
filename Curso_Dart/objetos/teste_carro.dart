import 'carro.dart';
void main(List<String> args) {

  var c1 = new Carro();

  while (!c1.estaNoLimite()) {
    print("A velocidade atual é ${c1.acelerar()}");  
  }

  print("O carro chegou no limite da velocidade: ${c1.velocidadeAtual} Km/h");

  while (c1.velocidadeAtual > 0) {
    print("A velocidade atual é ${c1.frear()}Km/h");
  }
  print("O carro parou, velocidade: ${c1.velocidadeAtual}Km/h");
}