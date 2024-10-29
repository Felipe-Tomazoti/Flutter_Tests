import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/domain/pedido.dart';
import 'package:mobile/domain/produto.dart';

void main() {
  test("deve adicionar produtos no pedido", () {
    Produto monitor = Produto(10, 'Monitor Dell', 659.90);
    Produto tv = Produto(11, 'TV 50 P', 2559.90);

    Pedido pedidoJoao = Pedido('João');

    pedidoJoao.adicionarProduto(monitor);
    pedidoJoao.adicionarProduto(tv);

    expect(pedidoJoao.produtos.length, 2);
    Produto menorValor =
        pedidoJoao.produtos.reduce((a, b) => a.valor < b.valor ? a : b);
    expect(menorValor.valor, 659.90);
    expect(pedidoJoao.produtos[0].valor, 659.90);
    expect(pedidoJoao.produtos[0].nome, 'Monitor Dell');
    expect(pedidoJoao.produtos[1].valor, 2559.90);
    expect(pedidoJoao.produtos[1].nome, 'TV 50 P');
  });

  test("deve remover um produto no pedido", () {
    Produto teclado = Produto(1, 'Teclado', 65.90);
    Produto mouse = Produto(2, 'Mouse', 25.90);

    Pedido pedidoFelipe = Pedido('João');
    pedidoFelipe.adicionarProduto(teclado);
    pedidoFelipe.adicionarProduto(mouse);

    pedidoFelipe.removerProduto(teclado);

    expect(pedidoFelipe.produtos.length, 1);
    expect(pedidoFelipe.produtos[0].nome, "Mouse");
    expect(pedidoFelipe.produtos[0].valor, 25.90);
  });
}
