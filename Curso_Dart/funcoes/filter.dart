void main(List<String> args) {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];

  for (var nota in notas) {
    if ( nota >= 8) {
      notasBoas.add(nota);
    }
  }

  print(notas);
  print(notasBoas);
}

