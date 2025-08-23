//Question 19
// Write a Dart program that converts a list of names to a set of unique values. Create a map with
// counts of occurrences. Compare lengths and print a message if a specific name appears more than
// once.

void main() {
  List<String> names = ['Omnia', 'Aya', 'Ola', 'Omnia', 'Ola', 'Omnia'];
  Set<String> setOfNames = names.toSet();
  Map<String, dynamic> mapOfNames = {'Omnia': 3, 'Ola': 2, 'Aya': 1};

  int listLength = names.length;
  print(listLength);
  int setLength = setOfNames.length;
  print(setLength);
  int mapLength = mapOfNames.length;
  print(mapLength);
  if (listLength > setLength) {
    print('There are duplicate names');
  } else {
    print('values are unique');
  }

  if (mapOfNames['Omnia'] > 1) {
    print('Omnia appears more than one');
  }
}
