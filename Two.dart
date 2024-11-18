// Function to calculate the total price of the items
double calculateTotal(List<double> prices, {double taxRate = 0.08}) {
  double total = prices.reduce((a, b) => a + b);
  return total + (total * taxRate); // Add tax to total
}

// Anonymous function to filter out items below a certain price threshold
List<double> filterItemsBelowThreshold(List<double> prices, double threshold) {
  return prices.where((price) => price >= threshold).toList();
}

// Higher-order function to apply a discount to the prices
double applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  // Apply discount function to each price in the list and return the total
  List<double> discountedPrices =
      prices.map((price) => discountFunction(price)).toList();
  return calculateTotal(
      discountedPrices); // Recalculate total with discounted prices
}

// Recursive function to calculate a special discount based on the factorial of the number of items
double calculateFactorialDiscount(int numItems) {
  // Base case: factorial of 0 or 1 is 1
  if (numItems <= 1) {
    return 1;
  }
  // Recursive case: factorial is numItems * factorial(numItems - 1)
  return numItems * calculateFactorialDiscount(numItems - 1);
}

void main() {
  // Sample cart with prices of items
  List<double> cartItems = [5.99, 15.49, 25.99, 8.99, 12.50];

  // Filter out items that are below $10
  List<double> filteredItems = filterItemsBelowThreshold(cartItems, 10);
  print('Filtered items (above \$10): $filteredItems');

  // Define a discount function: a 10% discount
  double discountFunction(double price) {
    return price * 0.9;
  }

  // Apply the discount function to all the items in the cart
  double totalAfterDiscount = applyDiscount(filteredItems, discountFunction);
  print(
      'Total after applying 10% discount: \$${totalAfterDiscount.toStringAsFixed(2)}');

  // Calculate the total price with a special discount based on the factorial of the item count
  int numItems = cartItems.length; // Number of items in the original cart
  double factorialDiscount = calculateFactorialDiscount(numItems);
  double finalPrice = totalAfterDiscount * (1 - factorialDiscount / 100);
  print(
      'Final price after applying factorial discount: \$${finalPrice.toStringAsFixed(2)}');
}
