// 2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
// b) Print a sentence that includes all values using string interpolation.
// c) Change weight to a different value and print only the updated one

void main() {
  String country = 'Egypt';
  int year = 2003;
  double weight = 52.5;
  bool likeCoding = true;

  print(
    "$country my mother country and I live in it from $year. I weight $weight and I love coding $likeCoding",
  );

  weight = 53.2;
  print('I weight $weight');
}
