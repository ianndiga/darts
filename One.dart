void main() {
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool isActive = true;
  List<int> myList = [1, 2, 3, 45, 67, 8, 100];

  print('Integer: $myInt');
  print('Double: $myDouble');
  print('String: $myString');
  print('Boolean: $isActive');
  print('List: $myList');

  print('String to int: ${convertStringToInt("100")}');
  print('String to double: ${convertStringToDouble("3.14")}');
  print('Int to String: ${convertIntToString(42)}');
  print('Int to Double: ${convertIntToDouble(42)}');

  String inputString = "123";
  convertAndDisplay(inputString);

  checkNumberSign(myInt);
  int age = 20;
  checkVotingEligibility(age);
  int day = 3;
  switchCaseDayOfWeek(day);
  print("For loop (1 to 10):");
  forLoopExample();

  print("While loop (10 to 1):");
  whileLoopExample();

  print("Do-while loop (1 to 5):");
  doWhileLoopExample();

  print("Iterating through the List and performing checks:");
  processList(myList);
}

int convertStringToInt(String str) {
  return int.tryParse(str) ?? 0;
}

double convertStringToDouble(String str) {
  return double.tryParse(str) ?? 0.0;
}

String convertIntToString(int num) {
  return num.toString();
}

double convertIntToDouble(int num) {
  return num.toDouble();
}

void convertAndDisplay(String input) {
  int intValue = convertStringToInt(input);
  double doubleValue = convertStringToDouble(input);
  print('Converted String to Int: $intValue');
  print('Converted String to Double: $doubleValue');
}

void checkNumberSign(int num) {
  if (num > 0) {
    print("The number $num is positive.");
  } else if (num < 0) {
    print("The number $num is negative.");
  } else {
    print("The number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("You are eligible to vote.");
  } else {
    print("You are not eligible to vote.");
  }
}

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

void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

void processList(List<int> numbers) {
  for (int num in numbers) {
    print('Number: $num');

    if (num % 2 == 0) {
      print("$num is even.");
    } else {
      print("$num is odd.");
    }

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
