import 'dart:io';

void main() {
  soultion();
}

void patternA() {
  for (int i = 1; i <= 8; i++) {
    for (int j = 1; j <= i; j++) {
      if (j == i) {
        print('#');
      } else {
        stdout.write('# ');
      }
    }
  }
}

void patternB() {
  for (int i = 8; i >= 1; i--) {
    for (int j = 1; j <= i; j++) {
      if (j == i) {
        print('#');
      } else {
        stdout.write('# ');
      }
    }
  }
}

void patternC() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write('  ');
    }
    for (int k = 0; k < 8 - i; k++) {
      if (k == 8 - i - 1) {
        print('#');
      } else {
        stdout.write('# ');
      }
    }
  }
}

void patternD() {
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 7 - i; j++) {
      stdout.write('  ');
    }
    for (int k = 0; k <= i; k++) {
      if (k == i) {
        print('#');
      } else {
        stdout.write('# ');
      }
    }
  }
}

void patternE() {
  int n = 7;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == n - 1 || j == 0 || j == n - 1) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      } else {
        if (j == n - 1) {
          print(' ');
        } else {
          stdout.write('  ');
        }
      }
    }
  }
}

void patternF() {
  int n = 7;
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == n - 1) {
      for (int j = 0; j < n; j++) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      }
    } else {
      for (int j = 0; j < i; j++) {
        stdout.write('  ');
      }
      print('#');
    }
  }
}

void patternG() {
  int n = 7;
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == n - 1) {
      for (int j = 0; j < n; j++) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      }
    } else {
      for (int j = 0; j < n - 1 - i; j++) {
        stdout.write('  ');
      }
      print('#');
    }
  }
}

void patternH() {
  int n = 7;
  int mid = n ~/ 2;
  for (int i = 0; i < n; i++) {
    if (i == 0 || i == n - 1) {
      for (int j = 0; j < n; j++) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      }
    } else {
      int dist = i < mid ? i : n - 1 - i;
      for (int j = 0; j < dist; j++) {
        stdout.write('  ');
      }
      if (dist == mid) {
        print('#');
      } else {
        stdout.write('#');
        int spaces = (n - 1 - 2 * dist) * 2 - 1;
        for (int j = 0; j < spaces; j++) {
          stdout.write(' ');
        }
        print('#');
      }
    }
  }
}

void patternI() {
  int n = 7;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i == 0 || i == n - 1 || j == 0 || j == n - 1) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      } else if ((i - j).abs() == 0 || (i + j) == n - 1) {
        if (j == n - 1) {
          print('#');
        } else {
          stdout.write('# ');
        }
      } else {
        if (j == n - 1) {
          print(' ');
        } else {
          stdout.write('  ');
        }
      }
    }
  }
}

void soultion() {
  print('Pattern (a):');
  patternA();

  print('\nPattern (b):');
  patternB();

  print('\nPattern (c):');
  patternC();

  print('\nPattern (d):');
  patternD();

  print('\nPattern (e):');
  patternE();

  print('\nPattern (f):');
  patternF();

  print('\nPattern (g):');
  patternG();

  print('\nPattern (h):');
  patternH();

  print('\nPattern (i):');
  patternI();
}
