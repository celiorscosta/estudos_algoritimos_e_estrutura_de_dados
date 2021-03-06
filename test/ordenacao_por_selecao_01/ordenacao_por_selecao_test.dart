import 'package:collection/collection.dart';
import 'package:test/test.dart';

import 'package:estudos_algoritimos_e_estrutura_de_dados/ordenacao_por_selecao_01/ordenacao_por_selecao.dart';

void main() {
  test('Ordenação por Seleção', () {
    var arr = <int>{5, 7, 2, 1, 101, 9, 3, 8, 100, 4, 6};
    var arrOrdenado = <int>{1, 2, 3, 4, 5, 6, 7, 8, 9, 100, 101};
    final stopwatch = Stopwatch();
    stopwatch.start();
    print("DADOS ENVIADOS ${arr.toList()}");
    var res = ordenarPorSelecao(arr.toList());
    print("DADOS RETORNADOS $res");
    print("TEMPO: ${stopwatch.elapsed}");
    expect(ListEquality().equals(res, arrOrdenado.toList()), true);
  });
}
