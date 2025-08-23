//Question 17
//Write a Dart program that formats a price tag string with a currency. Apply string methods such as
// toString, padLeft, and length to format and compare the results

void main() {
  int price = 15;
  String strPrice = price.toString();
  print('original stirng: $strPrice');

  String taggedPrice = strPrice + '\$';
  print('taggesd string: $taggedPrice');

  String paddedLeft = strPrice.padLeft(5);
  print('padded string: $paddedLeft');

  print('original stirng: ${strPrice.length}');
  print('taggesd string: ${taggedPrice.length}');
  print('padded string: ${paddedLeft.length}');
}
