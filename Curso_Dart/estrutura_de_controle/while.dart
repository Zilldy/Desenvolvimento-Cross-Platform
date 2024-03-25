import 'dart:io';

void main(List<String> args) {
  var digitando = "";

  while (digitando != "sair") {
    stdout.write("Digite algo ou sair: ");
    digitando = stdin.readLineSync().toString();
  }
  
}