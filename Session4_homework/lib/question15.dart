//Question 15
// Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
// '/products', '/profile', or other). Handle each case with appropriate output, including maps and null
// safety where needed

void main() {
  String path = '/profile';

  switch (path) {
    case '/':
      print('Home page');
      break;

    case '/products':
      Map<String, dynamic> products = {'laptop': 20000, 'headephone': 1000};
      print('products $products');
      break;

    case '/profile':
      Map<String, dynamic?> profile = {
        'name': 'Omnia',
        'age': 21,
        'email': null,
      };
      print(profile['name'] ?? 'unknown');
      print(profile['age'] ?? 'unknown');
      print(profile['email'] ?? 'not found');
      break;

    default:
      print('No pages were found');
  }
}
