import 'dart:collection';

HashMap grafo() {
  HashMap<String, dynamic> grafo = HashMap<String, dynamic>();

  grafo['voce'] = ['alice', 'bob', 'claire'];
  grafo['bob'] = ['anuj', 'peggy', 'voce'];
  grafo['alice'] = ['peggy', 'voce'];
  grafo['claire'] = ['thom', 'jonny', 'voce'];
  grafo['anuj'] = ['bob'];
  grafo['peggy'] = ['bob', 'alice'];
  grafo['thom'] = ['claire'];
  grafo['jonny'] = ['claire'];

  return grafo;
}

bool pesquisa(HashMap hashMap, String key) {
  var filaDePesquisa = Queue<String>();
  var verificadas = <String>[];
  filaDePesquisa.addAll(hashMap[key]);

  while (filaDePesquisa.isNotEmpty) {
    var pessoa = filaDePesquisa.removeFirst();

    if (!verificadas.contains(pessoa)) {
      if (pessoaEVendedor(pessoa)) {
        print('$pessoa é um vendedor de manga!');
        return true;
      } else {
        List<dynamic> list = hashMap[pessoa];
        if (list.isNotEmpty) {
          filaDePesquisa.addAll(hashMap[pessoa]);
          verificadas.add(pessoa);
        }
      }
    }
  }

  return false;
}

bool pessoaEVendedor(String pessoa) {
  return pessoa.substring(pessoa.length - 1) == 'm';
}
