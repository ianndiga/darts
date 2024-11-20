// Abstraction: Define an abstract class with abstract methods.
abstract class Animal {
  void makeSound();
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
  double _balance;
  BankAccount(this._balance);
  double get balance => _balance;
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: \$${amount}");
    } else {
      print("Invalid deposit amount.");
    }
  }

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
  dog.makeSound();

  print("Cat sound: ");
  cat.makeSound();

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
