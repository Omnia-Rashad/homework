//10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
// after each.
// b) Create var greeting = 'Hi'; change it to another String and print.
// c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3)

void main() {
  //var: key word which store any data type based on the type of variable which I assiend and it can't change along the program
  //dynamic: data type which store any data type based on the type of variable which I assiend and it can change along the program

  dynamic value = 20;
  print(value);
  value = 'Omnia';
  print(value);

  var greet = 'Hi';
  print(greet);
  greet = 'Welcom';
  print(greet);

  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
