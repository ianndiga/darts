// Abstraction: Define an abstract class with abstract methods.
abstract class Animal {
  // Abstract method (does not have implementation).
  void makeSound();

  // Regular method with implementation.
  void sleep() {
    print("This animal is sleeping.");
  }
}

// Inheritance: Subclass that inherits from Animal class.
class Dog extends Animal {
  // Polymorphism: Overriding the abstract method to provide a unique implementation.
  @override
  void makeSound() {
    print("Bark");
  }
}

class Cat extends Animal {
  // Polymorphism: Overriding the abstract method to provide a unique implementation.
  @override
  void makeSound() {
    print("Meow");
  }
}

// Encapsulation: Class that encapsulates data (private variables) and methods.
class BankAccount {
  // Private variables (encapsulation)
  double _balance;

  // Constructor to initialize balance.
  BankAccount(this._balance);

  // Public method to access private balance.
  double get balance => _balance;

  // Method to deposit money (controlled access to the balance).
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Invalid deposit amount.");
    }
  }

  // Method to withdraw money (controlled access to the balance).
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: \$${amount}");
    } else {
      print("Insufficient funds.");
    }
  }
}

void main() {
  // Demonstrating Polymorphism with Animal subclasses
  Animal dog = Dog();
  Animal cat = Cat();

  print("Dog sound: ");
  dog.makeSound(); // Output: Bark

  print("Cat sound: ");
  cat.makeSound(); // Output: Meow

  // Demonstrating Encapsulation with BankAccount class
  BankAccount myAccount = BankAccount(1000);

  print("\nInitial balance: \$${myAccount.balance}");

  myAccount.deposit(200);
  print("Updated balance: \$${myAccount.balance}");

  myAccount.withdraw(500);
  print("Updated balance after withdrawal: \$${myAccount.balance}");

  // Trying to withdraw an invalid amount
  myAccount.withdraw(2000); // Output: Insufficient funds.
}
