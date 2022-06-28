import 'dart:async';
import 'dart:collection';

HashMap grafo() {
  HashMap<String, dynamic> grafo = HashMap<String, dynamic>();

  grafo['voce'] = ['alice', 'bob', 'claire'];
  grafo['bob'] = ['anuj', 'peggy'];
  grafo['alice'] = ['peggy'];
  grafo['claire'] = ['thom', 'jonny'];
  grafo['anuj'] = [];
  grafo['peggy'] = [];
  grafo['thom'] = [];
  grafo['jonny'] = [];

  return grafo;
}

bool fila(HashMap hashMap, String key) {
  var filaDePesquisa = Queue<String>();
  filaDePesquisa.addAll(hashMap[key]);

  while (filaDePesquisa.isNotEmpty) {
    var pessoa = filaDePesquisa.removeFirst();
    if (pessoaEVendedor(pessoa)) {
      print('$pessoa é um vendedor de manga!');
      return true;
    } else {
      List<dynamic> list = hashMap[pessoa];
      if (list.isNotEmpty) {
        filaDePesquisa.addAll(hashMap[pessoa]);
      }
    }
  }

  return false;
}

bool pessoaEVendedor(String pessoa) {
  return pessoa.substring(pessoa.length - 1) == 'm';
}
