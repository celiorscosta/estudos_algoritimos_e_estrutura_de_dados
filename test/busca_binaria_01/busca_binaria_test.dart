import 'package:estudos_algoritimos_e_estrutura_de_dados/busca_binaria_01/busca_binaria.dart';
import 'package:estudos_algoritimos_e_estrutura_de_dados/busca_binaria_01/palavras.dart';
import 'package:test/test.dart';

void main() {
  test('pesquisa Binária', () {
    var numeroPesquisar = 599950904;

    List lista = List<int>.generate(1022750000, (index) => index + 1);

    expect(pesquisaBinaria(numeroPesquisar, lista), numeroPesquisar);
    expect(pesquisaSimples(numeroPesquisar, lista), numeroPesquisar);
  });

  test('pesquisa binária em texto', () async {
    var wordList = listaDePalavras
        .split("\n")
        .where((element) => element.isNotEmpty)
        .toList();

    const buscarPalavra = 'garrafeiro';
    expect(pesquisaSimplesTXT(buscarPalavra, wordList), buscarPalavra);
    expect(pesquisaBinariaTXT(buscarPalavra, wordList), buscarPalavra);
  });
}
