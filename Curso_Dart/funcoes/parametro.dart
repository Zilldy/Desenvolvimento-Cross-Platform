import 'dart:math';

  void executar(Function fnPar, Function fnImpar) {
    var sorteado = Random().nextInt(10);
    print('O valor sorteado foi $sorteado');
    sorteado % 2 == 0 ? fnPar() : fnImpar();
  }
void main(List<String> args) {
  var minhafnPar = () => print('Eita! O valor é par.');
  var minhafnImpar = () => print('Vixe! O valor é impar.');

  executar(minhafnPar, minhafnImpar);

}
