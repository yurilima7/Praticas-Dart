void main() {
  final idade = 18;
  final sexo = 'F';
  final diaDaSemana = 1;
  var diaStr = '';

  // regra de negócio
  if (idade >= 18) {
    print('Pode tirar habilitação');
  } else {
    print('Não pode tirar habilitação');
  }

  if (sexo == 'M' && idade >= 18) {
    print('Entre!!');
  } else {
    print('Não entre!!');
  }

  sexo == 'M' ? print('eh masculino') : print('eh feminino');

  switch (diaDaSemana) {
    case 0:
      diaStr = 'Domingo';
      break;

    case 1:
      diaStr = 'Segunda-Feira';
      break;

    case 2:
      diaStr = 'Terca-Feira';
      break;

    case 3:
      diaStr = 'Quarta-Feira';
      break;

    case 4:
      diaStr = 'Quinta-Feira';
      break;

    case 5:
      diaStr = 'Sexta-Feira';
      break;

    case 6:
      diaStr = 'Sábado';
      break;

    default:
      diaStr = 'Não identificado';
      break;
  }

  print('Hoje é: $diaStr');
}
