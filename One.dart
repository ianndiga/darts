void main() {
  // 1. Define Variables
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool isActive = true;
  List<int> myList = [1, 2, 3, 45, 67, 8, 100];

  // Print out the values
  print('Integer: $myInt');
  print('Double: $myDouble');
  print('String: $myString');
  print('Boolean: $isActive');
  print('List: $myList');

  // 2. Type Conversion
  print('String to int: ${convertStringToInt("100")}');
  print('String to double: ${convertStringToDouble("3.14")}');
  print('Int to String: ${convertIntToString(42)}');
  print('Int to Double: ${convertIntToDouble(42)}');

  // 3. Function for Conversion
  String inputString = "123";
  convertAndDisplay(inputString);

  // 4. Control Flow - If-Else Statements

  // Checking if a number is positive, negative, or zero
  checkNumberSign(myInt);

  // Checking if a person is eligible to vote based on age
  int age = 20;
  checkVotingEligibility(age);

  // 5. Switch Case - Day of the Week based on a number
  int day = 3; // 1 for Monday, 2 for Tuesday, etc.
  switchCaseDayOfWeek(day);

  // 6. Loops - For loop, While loop, Do-while loop
  print("For loop (1 to 10):");
  forLoopExample();

  print("While loop (10 to 1):");
  whileLoopExample();

  print("Do-while loop (1 to 5):");
  doWhileLoopExample();

  // 7. Combining Data Types and Control Flow
  print("Iterating through the List and performing checks:");
  processList(myList);
}

// 2. Type Conversion Functions
int convertStringToInt(String str) {
  return int.tryParse(str) ?? 0; // Returns 0 if the conversion fails
}

double convertStringToDouble(String str) {
  return double.tryParse(str) ?? 0.0; // Returns 0.0 if the conversion fails
}

String convertIntToString(int num) {
  return num.toString();
}

double convertIntToDouble(int num) {
  return num.toDouble();
}

// 3. Function to convert String to int and double, then display the results
void convertAndDisplay(String input) {
  int intValue = convertStringToInt(input);
  double doubleValue = convertStringToDouble(input);
  print('Converted String to Int: $intValue');
  print('Converted String to Double: $doubleValue');
}

// 4. If-Else Statements to check number sign
void checkNumberSign(int num) {
  if (num > 0) {
    print("The number $num is positive.");
  } else if (num < 0) {
    print("The number $num is negative.");
  } else {
    print("The number is zero.");
  }
}

// If-Else Statement to check voting eligibility
void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

// 5. Switch-Case Statement to print day of the week
void switchCaseDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Today is Monday.");
      break;
    case 2:
      print("Today is Tuesday.");
      break;
    case 3:
      print("Today is Wednesday.");
      break;
    case 4:
      print("Today is Thursday.");
      break;
    case 5:
      print("Today is Friday.");
      break;
    case 6:
      print("Today is Saturday.");
      break;
    case 7:
      print("Today is Sunday.");
      break;
    default:
      print("Invalid day.");
  }
}

// 6. Loops

// For loop printing numbers from 1 to 10
void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

// While loop printing numbers from 10 to 1
void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

// Do-while loop printing numbers from 1 to 5
void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// 7. Complex Example: Iterating through the List and performing checks
void processList(List<int> numbers) {
  for (int num in numbers) {
    print('Number: $num');

    // Check if number is even or odd
    if (num % 2 == 0) {
      print("$num is even.");
    } else {
      print("$num is odd.");
    }

    // Switch-case to categorize numbers
    switch (num) {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        print("$num is small.");
        break;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        print("$num is medium.");
        break;
      default:
        print("$num is large.");
        break;
    }
  }
}
