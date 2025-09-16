//  Q4
//  Create a class Product with private fields _name and _price.
//- Reject empty names and negative prices in setters.
//- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
//- In main(), demonstrate setting values and printing the original and discounted price.

void main() {
  Product product1 = Product();
  product1.price = 100;
  product1.name = 'labtop';
  print(product1.name);
  print('Original price : ${product1.price}');
  print('Discounted price : ${product1.discountedPrice}');
}

class Product {
  String? _name;
  double? _price;

  set name(String name) {
    if (name.trim().isNotEmpty) {
      this._name = name;
    } else {
      print('invalid name');
    }
  }

  set price(double price) {
    if (price >= 0) {
      this._price = price;
    } else {
      print('invalid price');
    }
  }

  double get price => this._price!;

  String get name => this._name!;

  double get discountedPrice {
    double finalPrice = _price! - (_price! * 0.1);
    return finalPrice;
  }
}
