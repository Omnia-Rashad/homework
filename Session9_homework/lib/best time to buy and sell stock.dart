import 'dart:math';

void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4]));
}

int maxProfit(List<int> prices) {
  int minPrice = prices[0];
  int MaxProfit = 0;

  for (int i = 0; i < prices.length; i++) {
    minPrice = min(prices[i], minPrice);
    int profit = prices[i] - minPrice;
    MaxProfit = max(profit, MaxProfit);
  }
  return MaxProfit;
}
