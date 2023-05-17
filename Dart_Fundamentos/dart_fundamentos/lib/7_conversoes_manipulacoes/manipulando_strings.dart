void main() {
  final nome = 'Yuri Lima';

  var subStringNome = nome.substring(5);
  print(subStringNome);

  var subStringNome2 = nome.substring(0, 4);
  print(subStringNome2);

  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0, 1);
  sexoSigla == 'M' ? print('Masculino') : print('Feminino');

  if (sexo.startsWith('M')) {
    print('Masculino');
  }

  if (sexo.toLowerCase().startsWith('m')) {
    print('Masculino minusculo');
  }

  if (nome.toUpperCase().contains('LIMA')) {
    print('É Yuri!');
  }

  var primeiroNome = 'Yuri';
  var segundoNome = 'Lima';

  var saudacao = 'Olá $primeiroNome $segundoNome seja bem vindo!';
  print(saudacao);

  print('Soma 2 + 2 = ${2 + 2}');

  var paciente = '23|133|23';

  var dados = paciente.split('|');
  print(dados);
}
