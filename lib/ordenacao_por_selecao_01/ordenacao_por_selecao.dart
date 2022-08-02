List<int> ordenarPorSelecao(List<int> arr) {
  List<int> novoArr = <int>[];
  var total = arr.length;

  for (var i = 0; i < total; i++) {
    int menor = buscaMenor(arr);
    novoArr.add(arr[menor]);
    arr.removeAt(menor);
  }
  return novoArr;
}

int buscaMenor(List<int> arr) {
  var menor = arr[0];
  var menorIndice = 0;

  for (var i = 0; i < arr.length; i++) {
    if (arr[i] < menor) {
      menor = arr[i];
      menorIndice = i;
    }
  }
  return menorIndice;
}
