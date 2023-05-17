import '../Classes/cliente.dart';
import '../Classes/produto.dart';
import '../Classes/venda.dart';
import '../Classes/venda_item.dart';

void main(List<String> args) {
  Venda venda = Venda(
      cliente: Cliente(nome: "Santos Pereira", cpf: "123.456.789-00"),
      itens: <VendaItem>[
        VendaItem(
            quantidade: 30,
            produto: Produto(
                codigo: 1, nome: "Lápis Preto HB", preco: 6.00, desconto: 0.5)),
        VendaItem(
            quantidade: 20,
            produto: Produto(
              codigo: 2,
              nome: "Caderno",
              preco: 20.00,
              desconto: 0.25,
            )),
        VendaItem(
            quantidade: 100,
            produto: Produto(
              codigo: 43,
              nome: "Borracha",
              preco: 2.00,
              desconto: 0.5,
            ))
      ]);

  print("O valor total da venda é: ${venda.valorTotal}");

  print("Nome do primeiro produto é: ${venda.itens[0].produto.nome}");
}
