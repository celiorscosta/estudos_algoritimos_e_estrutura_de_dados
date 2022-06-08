List<int> ordenarPorSelecao(List<int> arr) {
  print(arr);

  List<int> novoArr = <int>[];

  for (var i = 0; i < arr.length; i++) {
    int menor = buscaMenor(arr);
    novoArr.add(arr[menor]);
    arr[menor] = 100;
  }
  print(novoArr);
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
