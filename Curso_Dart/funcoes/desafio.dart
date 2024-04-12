//! Detalhe sobre a String
//! A String é composta por 4 campos (Nome|Idade|Profissão|Estado)
//! Baseado no array acima monte um relatório onde
//! 1- Inclua o nome, idade, profissão e estado de origem dos participantes do grupo no array
//! 2- Apresente a quantidade total de pacientes do array
//! 3- Apresente os pacientes com mais de 20 anos e print o nome deles
//! 4- Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
//! 5- Apresente a quantidade de pacientes que moram em SP

//! Enviar no e-mail profbeto.silva@fiap.com.br

void main(List<String> args) {
  final pacientes = [
    'Rodrigo Rahman|35|Desenvolvedor|SP',
    'Manoel Silva|12|Estudante|AL',
    'Joaquim Rahman|18|Estudante|SP',
    'Fernando Verne|35|Estudante|PE',
    'Gustavo Silva|40|Desenvolvedor|CE',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|Dentista|MG',
    'Joao Rahman|55|Jornalista|RJ',
    'Gabriel Arbigaus|21|Desenvolvedor|SC',
    'Guilherme Cardoso|19|Desenvolvedor|SP',
  ];


// 2-
//  print(pacientes.length);
// 3-
//  pacientesMais20(pacientes);
// 4-
    pacientesProf(pacientes);
// 5-
//  print("A quantidade de pacientes que moram em SP é ${pacientesCadaPosicao(pacientes)}");
}

  void pacientesProf(List paciente) {
    List<String> prof = [];
    
    int count = 0;
    for (var i = 0; i < pacientes.length; i++) {
      var p = pacientes[i].split('|');
      for (var j = 1; j < pacientes.length - 1; j++) {
        var p2 = p[2];
        print(p2);
      }
    }

    Map<String, int> contagem = {};

    for (var item in prof) {
      contagem[item] ??= 0;
      contagem[item] = contagem[item]! + 1;
    }
    contagem.forEach((item, quantidade) {
     print('$item: $quantidade');
    });
  }

  void pacientesMais20(List paciente) {
    for (var i = 0; i < paciente.length; i++) {
      var p = paciente[i].split('|');
      if (int.parse(p[1]) >= 20) {
        print(p[0]);
      }
    }
  }

  int pacientesCadaPosicao(List paciente) {
    int count = 0;
    for (var i = 0; i < paciente.length; i++) {
    var p = paciente[i].split('|');
      if (p[3] == 'SP') {
        count ++;
      }
    }
    return count;
  }




