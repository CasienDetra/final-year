import 'dart:io';

void main() {
  double rateUSD = 0;
  double rateEUR = 0;
  double rateGBP = 0;

  while (true) {
    print('\nConverter');
    print('1. Input rates');
    print('2. Exchange');
    print('0. Exit');
    stdout.write('\nEnter choice: ');
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 0) {
      break;
    } else if (choice == 1) {
      stdout.write('Enter rate for 1 USD (in Riel): ');
      rateUSD = double.parse(stdin.readLineSync()!);
      stdout.write('Enter rate for 1 EUR (in Riel): ');
      rateEUR = double.parse(stdin.readLineSync()!);
      stdout.write('Enter rate for 1 GBP (in Riel): ');
      rateGBP = double.parse(stdin.readLineSync()!);
      print('Rates saved.');
    } else if (choice == 2) {
      if (rateUSD == 0 || rateEUR == 0 || rateGBP == 0) {
        print('Please input rates first (option 1).');
        continue;
      }
      stdout.write('Enter amount of Khmer Riel you want to convert: ');
      double riel = double.parse(stdin.readLineSync()!);

      print('\n1 dollar = ${rateUSD.toInt()} Riel');
      print('1 Euro = ${rateEUR.toInt()} Riel');
      print('1 Pound = ${rateGBP.toInt()} Riel');

      double usd = riel / rateUSD;
      double eur = riel / rateEUR;
      double gbp = riel / rateGBP;

      print('\n${riel.toStringAsFixed(0)} Riel is equivalent to '
          '${usd.toStringAsFixed(2)} USD, '
          '${eur.toStringAsFixed(2)} EUR '
          'and ${gbp.toStringAsFixed(2)} GBP');
    }
  }
}
