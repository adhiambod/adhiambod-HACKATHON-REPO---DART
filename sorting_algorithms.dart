// Place all import statements at the top of the file
import 'dart:math'; // Make sure this is at the very top

List<int> quickSort(List<int> list) {
  if (list.length <= 1) return list;

  int pivot = list[list.length ~/ 2];
  List<int> less = [];
  List<int> greater = [];

  for (int num in list) {
    if (num == pivot) continue;
    num < pivot ? less.add(num) : greater.add(num);
  }

  return [...quickSort(less), pivot, ...quickSort(greater)];
}

List<int> mergeSort(List<int> list) {
  if (list.length <= 1) return list;

  int mid = list.length ~/ 2;
  List<int> left = mergeSort(list.sublist(0, mid));
  List<int> right = mergeSort(list.sublist(mid));

  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}

void main() {
  List<int> list = List.generate(1000, (i) => Random().nextInt(1000));

  Stopwatch stopwatch = Stopwatch()..start();
  quickSort(List.from(list));
  print('Quick Sort executed in ${stopwatch.elapsedMilliseconds} ms');

  stopwatch.reset();
  mergeSort(List.from(list));
  print('Merge Sort executed in ${stopwatch.elapsedMilliseconds} ms');
}
