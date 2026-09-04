import 'dart:io';

void main() {
  solution();
}

void solution() {
  stdout.write('Enter customer ID: ');
  String? id = stdin.readLineSync();

  stdout.write('Enter customer name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter units consumed: ');
  int units = int.parse(stdin.readLineSync()!);

  // set price per unit
  double chargePerUnit;
  if (units < 200) {
    chargePerUnit = 500;
  } else if (units < 400) {
    chargePerUnit = 100;
  } else if (units < 600) {
    chargePerUnit = 150;
  } else {
    chargePerUnit = 200;
  }

  // store total amount
  double amount = units * chargePerUnit;

  if (amount > 500000) {
    amount += amount * 0.15;
  }

  if (amount < 1000) {
    amount = 1000;
  }

  // print the bill
  print('\n--- Electricity Bill ---');
  print('Customer ID: $id');
  print('Customer Name: $name');
  print('Units Consumed: $units');
  print('Charge per Unit: ${chargePerUnit.toInt()}R');
  print('Total Amount: ${amount.toStringAsFixed(2)}R');
}
