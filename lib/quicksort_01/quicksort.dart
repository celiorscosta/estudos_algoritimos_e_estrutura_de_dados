List<int> quicksort(List<int> arr) {
  if (arr.length < 2) {
    return arr;
  } else {
    var pivo = arr[0];
    List<int> menores = <int>[];
    List<int> maiores = <int>[];

    for (int i = 1; i < arr.length; i++) {
      var element = arr[i];
      if (element <= pivo) {
        menores.add(element);
      }
    }

    for (int j = 1; j < arr.length; j++) {
      var element = arr[j];
      if (element >= pivo) {
        maiores.add(element);
      }
    }
    return quicksort(menores) + [pivo] + quicksort(maiores);
  }
}
