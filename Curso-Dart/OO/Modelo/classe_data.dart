class Data {
  late int dia;
  late int mes;
  late int ano;

  // Data(int dia, int mes, int ano) {
  //   this.dia = dia;
  //   this.mes = mes;
  //   this.ano = ano;
  // }

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]); // construtor opcional

  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970}); // construtor nomeado

  String dataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return dataFormatada();
  }
}

void main(List<String> args) {
  var dataAniversario = new Data(3, 10, 2020);

  Data dataCompra = Data(1, 12, 2021);
  dataCompra.dia = 11;
  dataCompra.mes = 05;
  dataCompra.ano = 2021;

  print("A data do aniversário é ${dataAniversario.dataFormatada()}");
  print("A data da compra é ${dataCompra.dataFormatada()}");

  print("exemplo toString: $dataCompra");

  print("opcionais: ${new Data()}");
  print("opcionais: ${new Data(31, 12, 2021)}");

  print("nomeados: $Data.com(ano: 2022)");

  var dataFinal = Data.com(dia: 12, mes: 7, ano: 2024);
  print("nomeados: $dataFinal");
}
