// class Data {
//   int dia;
//   int mes;
//   int ano;
//   Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
//   String obterFormatada() {
//     return "$dia/$mes/$ano";
//   }

//   String toString() {
//     return obterFormatada();
//   }
// }

// void main(List<String> args) {
// var dataAniversario = new Data(3, 10, 2020);
// String d1 = dataAniversario.obterFormatada();
// print("A data do aniversário é: $d1");
// }

class Data {
  int dia;
  int mes;
  int ano;
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);
  Data.com({
    this.dia = 1,
    this.mes = 1,
    this.ano = 1970
  });

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterFormatada();
  }
}
void main(List < String > args) {
  var dataAniversario = new Data(3, 10, 2020);
  String d1 = dataAniversario.obterFormatada();
  print("A data do aniversário é: $d1");
  print(Data.com(ano: 2024));
  print(Data.com(mes: 04));
}