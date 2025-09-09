void main() {
  Product product1 = Product();
  product1.name = 'milk';
  product1.price = 20;
  print(product1.name);
  print(product1.price);

  Product product2 = Product();
  product2.name = 'cheese';
  print(product2.name);
  print(product2.price);
}

class Product {
  String? name;
  double price = 0;
}
