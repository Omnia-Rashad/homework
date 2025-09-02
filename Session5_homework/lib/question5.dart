// Q5
// Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal

void main() {
  String price = 'EGP 12.50';

  String smallString = price.replaceAll('EGP 12.50', '12.50');
  print(smallString);

  double decimalPrice = double.parse(smallString);
  print(decimalPrice);

  //   List<String> parts = price.split(' ');

  // for(var item in parts){}
}
