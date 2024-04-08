void main(List<String> args) {
  
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  var total = alunos.map((aluno) => aluno['nota']).map((nota) => (nota as double)).reduce((t, a) => t + a);

  print(total);
  print("O valor da média é: ${total / alunos.length}");
}

