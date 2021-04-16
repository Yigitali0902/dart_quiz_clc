import 'dart:io';

void program_1() {
  print('Input your name - ');
  var name = stdin.readLineSync();
  print('Input your age - ');
  var age = int.parse(stdin.readLineSync());
  if (age <= 100) {
    print('$name, it looks you have ${100 - age} years to be 100 years old');
  } else {
    print('$name, you have already passed 100');
  }
}

void program_5() {
  print('Input a number - ');
  var number = int.parse(stdin.readLineSync());
  print('All divisors of this number are following:');
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(number);
    }
  }
}

void program_6() {
  final a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  final b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  final set1 = <int>{};
  set1.addAll(a);
  final set2 = <int>{};
  set2.addAll(b);
  final intersection = set1.intersection(set2);
  print(intersection);
}

List<int> menFromBoys(List<int> list) {
  final set1 = <int>{};
  final list1 = <int>[];
  final set2 = <int>{};
  final list2 = <int>[];
  for (var element in list) {
    if (element % 2 == 0) {
      set1.add(element);
    } else {
      set2.add(element);
    }
  }
  list1.addAll(set1);
  list1.sort();
  list2.addAll(set2);
  list2.sort();
  final list3 = list2.reversed;
  return [...list1, ...list3];
}

void program_8() {
  const list = [-1, 8, 9, 8, 5, 4, -45, 4, -1];
  final newList = menFromBoys(list);
  print('This is unordered list $list');
  print('This is ordered list $newList');
}

String longest(String a, String b) {
  var result = StringBuffer();
  var set1 = <String>{};
  var set2 = <String>{};
  var list = <String>[];
  for (var charCode in a.runes) {
    set1.add(String.fromCharCode(charCode));
  }
  for (var charCode in b.runes) {
    set2.add(String.fromCharCode(charCode));
  }
  set1.addAll(set2);
  list.addAll(set1);
  list.sort();
  list.forEach((element) => result.write(element));
  return result.toString();
}

void program_9() {
  var a = 'xyaabbbccccdefww';
  var b = 'xxxxyyyyabklmnopq';
  print(longest(a, b));
}

bool xO(String a) {
  var countX = 0;
  var countO = 0;
  for (var charCode in a.runes) {
    if (String.fromCharCode(charCode) == 'x') {
      countX++;
    } else if (String.fromCharCode(charCode) == 'o') {
      countO++;
    }
  }
  return (countO == countX);
}

void program_10() {
  var a = 'xxooxO';
  print(xO(a));
}

int factorial(int number) {
  var multiply = 1;
  for (var i = 1; i <= number; i++) {
    multiply *= i;
  }
  return multiply;
}

String strong_num(int number) {
  final givenValue = number;
  var sum = 0;
  var digit = 0;
  while (number > 0) {
    digit = number % 10;
    sum += factorial(digit);
    number = number ~/ 10;
  }
  if (sum == givenValue) {
    return '$givenValue is Strong!!!';
  } else {
    return '$givenValue is NOT Strong!!!';
  }
}

void program_11() {
  print(strong_num(145));
  print(strong_num(123));
  print(strong_num(2));
}

int movie(int card, int ticket, double perc) {
  var price = ticket.toDouble() * perc;
  var count = 1;
  while ((card + price).ceil() > count * ticket) {
    count++;
    price = perc * price;
  }
  return count;
}

void program_7() {
  print(movie(100, 10, 0.95));
}

void main() {
  //program_1();
  //program_5();
  //program_6();
  //program_7();
  //program_8();
  //program_9();
  //program_10();
  //program_11();
}
