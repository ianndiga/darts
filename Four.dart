import 'dart:io';

void main() {
  List<String> namesList = ['Alice', 'Bob', 'Charlie'];
  print('Original List: $namesList');
  namesList.add('David');
  print('List after adding David: $namesList');
  namesList.remove('Bob');
  print('List after removing Bob: $namesList');
  print('Iterating over the list:');
  for (var name in namesList) {
    print(name);
  }

  Set<String> uniqueNamesSet = {'Alice', 'Bob', 'Charlie'};
  print('\nOriginal Set: $uniqueNamesSet');
  uniqueNamesSet.add('David');
  print('Set after adding David: $uniqueNamesSet');
  uniqueNamesSet.remove('Bob');
  print('Set after removing Bob: $uniqueNamesSet');
  print('Iterating over the set:');
  for (var name in uniqueNamesSet) {
    print(name);
  }

  Map<String, String> userContacts = {
    'Alice': 'alice@example.com',
    'Bob': 'bob@example.com'
  };
  print('\nOriginal Map: $userContacts');
  userContacts['Charlie'] = 'charlie@example.com';
  print('Map after adding Charlie: $userContacts');

  userContacts.remove('Bob');
  print('Map after removing Bob: $userContacts');
  print('Iterating over the map:');
  userContacts.forEach((key, value) {
    print('$key: $value');
  });

  File inputFile = File('input.txt');
  File outputFile = File('output.txt');
  try {
    String content = inputFile.readAsStringSync();
    print('\nReading content from input.txt: $content');
  } catch (e) {
    print('Error reading file: $e');
  }
  try {
    outputFile.writeAsStringSync('New data written to the file.');
    print('Data written to output.txt successfully.');
  } catch (e) {
    print('Error writing to file: $e');
  }

  DateTime now = DateTime.now();
  print('\nCurrent Date and Time: $now');
  DateTime futureDate = now.add(Duration(days: 5));
  print('Future Date (5 days later): $futureDate');
  DateTime pastDate = now.subtract(Duration(days: 3));
  print('Past Date (3 days ago): $pastDate');
  Duration difference = futureDate.difference(now);
  print('Difference between future date and current date: $difference');

  print('\n=== String Manipulation Application ===');
  print('Enter a string: ');
  String userInput = stdin.readLineSync() ?? '';
  String manipulatedString = userInput.split('').reversed.join().toUpperCase();
  print('Manipulated String: $manipulatedString');
  List<String> manipulatedStrings = [];
  manipulatedStrings.add(manipulatedString);
  String logMessage = 'Entry: $manipulatedString, Logged at: $now';
  File logFile = File('log.txt');
  try {
    logFile.writeAsStringSync(logMessage + '\n', mode: FileMode.append);
    print('Log has been saved to log.txt');
  } catch (e) {
    print('Error writing to log file: $e');
  }
  print('All manipulated strings:');
  manipulatedStrings.forEach((str) => print(str));
}
