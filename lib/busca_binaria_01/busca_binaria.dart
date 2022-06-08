int pesquisaBinaria(int numero, List lista) {
  var baixo = 0;
  var alto = lista.length;
  var count = 0;

  final stopwatch = Stopwatch();
  stopwatch.start();

  while (baixo <= alto) {
    var meio = (baixo + alto) ~/ 2;

    var chute = lista[meio];

    if (chute == numero) {
      print("BINÁRIA ENCONTROU EM $count PASSOS");
      print("Ao tempo de ${stopwatch.elapsed}");
      stopwatch.stop();
      return chute;
    }
    if (chute > numero) {
      alto = meio - 1;
    }
    if (chute < numero) {
      baixo = meio + 1;
    }
    count++;
  }
  return -1;
}

int pesquisaSimples(int numero, List lista) {
  var encontrou = -1;
  var count = 0;

  final stopwatch = Stopwatch();
  stopwatch.start();

  for (var item in lista) {
    count++;
    if (item == numero) {
      encontrou = item;
      print("SIMPLES ENCONTROU EM $count PASSOS");
      print("Ao tempo de ${stopwatch.elapsed}");
      stopwatch.stop();
      break;
    }
  }

  return encontrou;
}

String pesquisaBinariaTXT(String palavraPesquisar, List<String> lista) {
  var baixo = 0;
  var alto = lista.length;
  var count = 0;

  final stopwatch = Stopwatch();
  stopwatch.start();

  while (baixo <= alto) {
    var meio = (baixo + alto) ~/ 2;

    var chute = lista[meio];

    if (chute.toLowerCase() == palavraPesquisar.toLowerCase()) {
      print(
          "BINÁRIA ENCONTROU A PALAVRA '$palavraPesquisar' EM $count PASSOS EM ${stopwatch.elapsed} MICROSEGUNDOS");
      stopwatch.stop();
      return chute;
    }
    if (chute.toLowerCase().compareTo(palavraPesquisar.toLowerCase()) > 0) {
      alto = meio - 1;
    }
    if (chute.toLowerCase().compareTo(palavraPesquisar.toLowerCase()) < 0) {
      baixo = meio + 1;
    }
    count++;
  }
  return "";
}

String pesquisaSimplesTXT(String palavraPesquisar, List<String> lista) {
  final stopwatch = Stopwatch();
  String palavraLista = '';

  stopwatch.start();
  for (var i = 0; i < lista.length; i++) {
    palavraLista = lista[i].toString().toLowerCase();
    if (palavraPesquisar.toLowerCase() == palavraLista) {
      print(
          "SIMPLES ENCONTROU A PALAVRA '$palavraPesquisar' EM $i PASSOS EM ${stopwatch.elapsed} MICROSEGUNDOS");
      return lista[i];
    }
  }

  return "";
}
