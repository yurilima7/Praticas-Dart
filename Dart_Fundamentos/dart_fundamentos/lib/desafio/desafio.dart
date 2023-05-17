void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP
  final pacientesAcimade20 = [];
  final profissoes = [];
  final estados = [];

  for (var paciente in pacientes) {
    var dados = paciente.split('|');

    profissoes.add(dados[2]);
    estados.add(dados[3]);
    var idade = int.tryParse(dados[1]) ?? 0;
    if (idade > 20) {
      pacientesAcimade20.add(dados[0]);
    }
  }

  // 1
  print("Pacientes acima dos 20 anos");
  for (var p in pacientesAcimade20) {
    print(p);
  }

  // 2
  int dev = 0, dent = 0, jor = 0, est = 0;

  for (var p in profissoes) {
    switch (p.toLowerCase()) {
      case 'desenvolvedor':
        dev++;
        break;

      case 'estudante':
        est++;
        break;

      case 'dentista':
        dent++;
        break;

      case 'jornalista':
        jor++;
        break;

      default:
        break;
    }
  }

  print(
    '\nPacientes por profissão\nDesenvolvedores: $dev\nEstudantes: $est\nJornalistas: $jor\nDentista: $dent',
  );

  // 3
  int sp = 0;
  for (var estado in estados) {
    if (estado == 'SP') {
      sp++;
    }
  }

  print('\nPacientes de SP: $sp');
}
