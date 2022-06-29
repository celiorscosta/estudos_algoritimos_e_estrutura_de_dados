import 'dart:collection';

import 'package:estudos_algoritimos_e_estrutura_de_dados/pesquisa_em_largura/pesquisa_em_largura_01.dart';
import 'package:test/test.dart';

void main() {
  test('pesquisa em largura 01 ...', () async {
    var g = grafo();
    var q = pesquisa(g, 'voce');

    expect(q, isTrue);
  });
}
