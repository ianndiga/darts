double calculateTotal(List<double> prices, {double taxRate = 0.08}) {
  double total = prices.reduce((a, b) => a + b);
  return total + (total * taxRate);
}

List<double> filterItemsBelowThreshold(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}

double applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  List<double> discountedPrices =
      prices.map((price) => discountFunction(price)).toList();
  return calculateTotal(discountedPrices);
}

double calculateFactorialDiscount(int numItems) {
  if (numItems <= 1) {
    return 1;
  }
  return numItems * calculateFactorialDiscount(numItems - 1);
}

void main() {
  List<double> cartItems = [5.99, 15.49, 25.99, 8.99, 12.50];
  List<double> filteredItems = filterItemsBelowThreshold(cartItems, 10);
  print('Filtered items (above \$10): $filteredItems');
  double discountFunction(double price) {
    return price * 0.9;
  }

  double totalAfterDiscount = applyDiscount(filteredItems, discountFunction);
  print(
      'Total after applying 10% discount: \$${totalAfterDiscount.toStringAsFixed(2)}');
  int numItems = cartItems.length;
  double factorialDiscount = calculateFactorialDiscount(numItems);
  double finalPrice = totalAfterDiscount * (1 - factorialDiscount / 100);
  print(
      'Final price after applying factorial discount: \$${finalPrice.toStringAsFixed(2)}');
}
