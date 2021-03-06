import 'package:collection/collection.dart';
import 'package:test/test.dart';

import 'package:estudos_algoritimos_e_estrutura_de_dados/quicksort_01/quicksort.dart';

void main() {
  test('Ordenação por Seleção', () {
    var arr = <int>{5, 7, 2, 1, 9, 3, 8, 10, 4, 6};
    var arrOrdenado = <int>{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    final stopwatch = Stopwatch();
    stopwatch.start();
    var res = quicksort(arr.toList());
    print("DADOS ENVIADOS ${arr.toList()}");
    print("DADOS RETORNADOS $res");
    print("TEMPO: ${stopwatch.elapsed}");
    expect(ListEquality().equals(res, arrOrdenado.toList()), true);
  });
}
