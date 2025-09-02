//  Q12
//  Create a function that takes named parameters firstName, lastName, and an optional named
//  parameter age. Print the full name and, if age is provided, also print 'Age: X'

void main() {
  userData(firstName: 'Omnia', lastName: 'Rashad');
}

void userData({required String firstName, required String lastName, int? age}) {
  if (age != null) {
    print('$firstName $lastName');
    print('Age $age');
  } else {
    print('$firstName $lastName');
  }
}
