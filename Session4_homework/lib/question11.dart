//Question 11
// Write a Dart program that applies discounts to a price. Use nested if/else to apply different
// discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
// Print the final price

void main() {
  String discount = 'student';
  double price = 1000;

  if (discount == 'student') {
    price *= 0.5;
    print(price);
  } else if (discount == 'coupon') {
    price *= .3;
    print(price);
  } else if (price >= 1000) {
    price *= .1;
    print(price);
  } else {
    print("Hard Luck, You don't have discount");
  }
}
