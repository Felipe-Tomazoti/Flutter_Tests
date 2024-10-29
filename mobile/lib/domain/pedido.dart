import 'package:mobile/domain/produto.dart';

class Pedido {
  String nomeCliente;
  List<Produto> produtos = [];

  Pedido(this.nomeCliente);

  void adicionarProduto(Produto produto) {
    produtos.add(produto);
  }

  void removerProduto(Produto produto) {
    produtos.remove(produto);
  }
}
