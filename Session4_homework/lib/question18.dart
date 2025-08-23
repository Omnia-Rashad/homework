//Question 18
//Write a Dart program that reads environment variables from a map. If a value is null, replace it with
// a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
// conditions

void main() {
  Map<String, dynamic?> environment = {
    'pc': 'desktop',
    'mobile': 'android',
    'search engin': null,
  };

  environment['pc'] ??= 'laptop';
  environment['mobile'] ??= 'apple';
  environment['search engin'] ??= 'google';

  print(
    environment['pc'].toString().toUpperCase(),
  ); //as data type is dynamic so I must convert it to string first
  print(
    environment['mobile'].toString().toUpperCase(),
  ); //or I mat put ! after variable then write toUpperCase manually
  print(
    environment['search engin'].toString().toUpperCase(),
  ); //as dynamic don't provide all functionswhich can applied on string

  if (environment['pc']!.length >= environment['mobile']!.length) {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
