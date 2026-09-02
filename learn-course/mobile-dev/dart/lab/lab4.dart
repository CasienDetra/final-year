import 'dart:io';

void main() {
  stdout.write('Enter number of subjects: ');
  int n = int.parse(stdin.readLineSync()!);

  double total = 0;
  for (int i = 1; i <= n; i++) {
    stdout.write('Enter marks for subject $i: ');
    total += double.parse(stdin.readLineSync()!);
  }

  double percentage = total / n;

  String grade;
  if (percentage > 85) {
    grade = 'A';
  } else if (percentage >= 75) {
    grade = 'B';
  } else if (percentage >= 50) {
    grade = 'C';
  } else if (percentage > 30) {
    grade = 'D';
  } else {
    grade = 'Fail';
  }

  print('\nTotal Marks: ${total.toStringAsFixed(2)}');
  print('Percentage: ${percentage.toStringAsFixed(2)}%');
  print('Grade: $grade');
}
