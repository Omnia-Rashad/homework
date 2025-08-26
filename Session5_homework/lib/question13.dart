//Q13
//Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
//each name appears. Print only the names that appear more than once

void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Set<String> repeatedNames = {};
  Map<String, int> countNames = {};

  for (int i = 0; i < names.length; i++) {
    int counter = 0;
    for (int j = 0; j < names.length; j++) {
      if (names[i] == names[j]) {
        counter++;
      }
    }
    if (counter > 1) {
      repeatedNames.add(names[i]);
      countNames[names[i]] = counter;
    }
  }
  print(repeatedNames);
  print(countNames);
}
