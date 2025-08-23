// Question 12
// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length

void main() {
  Map<String, dynamic?> user = {'name': 'Omnia', 'phone': null};

  if (user['phone'] == null) {
    print('No found phone number');
  }

  user['phone'] = '456789789';
  print(user['phone'].length);
}
