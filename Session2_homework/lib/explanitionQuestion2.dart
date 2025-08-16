// Describe the difference between var, dynamic, and explicitly typed variables in Dart

void main() {
  var age = 20;
  //age=20.5 error
  //var: key word used to define any data type depending on the value which we assigned to variable
  //and we cann't change the type of the value over the program

  dynamic hight = 150;
  hight = 1.56;
  //dynamic: weak data type which can define any data type depending on the value which we assigned to variable
  //and we can change the type of the value over the program

  int counter = 5;
  //int: data type store integer values only

  double lenght = 155.8;
  //double: data type store decimal values only

  num rating;
  //num: data type store numeric values either they are integer or decimal

  String name;
  //string: data type store text values only

  bool isOnline;
  //bool: data type store only two values either true or false
}
