class Data {
  int ? dia;
  int ? mes;
  int ? ano;
  String obterFormatada() {
    return "$dia/$mes/$ano";
  }
}
void main(List < String > args) {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");

  String d1 = dataAniversario.obterFormatada();
  print("A data do anivérsário é: $d1");
}