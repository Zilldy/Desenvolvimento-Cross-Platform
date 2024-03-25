void main(List<String> args) {
  for (var i = 0; i < 10; i++) print("i = $i");
    print("Fim!");
  
  var notas1 = [8.9, 9.3, 7.8, 6.9, 9.1];
  for (var nota in notas1) print("O valor da nota é $nota");

  Map<String, double> notas = {
    "Joao Pedro": 9.1,
    "Maria Augusta": 7.2,
    "Ana Silva": 6.4,
    "Roberto Andrade": 8.8,
    "Pedro Firmino": 9.9
  };

  for(String nome in notas.keys) {
    print("Nome do aluno é $nome");
  }

  for(var nome in notas.values){
    print("Nota do aluno é $nome");
  }

  for(var nome in notas.entries){
    print("Aluno ${nome.key} tem nota ${nome.value}");
  }
}