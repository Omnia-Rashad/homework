//Question 10
//Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
//'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'

void main() {
  Map<String, dynamic> countries = {
    'EG': 'Egypt',
    'USA': 'United States',
    'Pa': 'Palestine',
  };

  print(countries['EG']);
  countries['QA'] = 'Qatar';
  print(countries.length);
  bool isExist = countries.containsKey('JO');

  if (isExist == false) {
    print('Jordan missing');
  }
}
