double basicCalculator(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 == 0) {
        throw ArgumentError('Cannot divide by zero');
      }
      return num1 / num2;
    case '%':
      return num1 % num2;
    default:
      throw ArgumentError('Invalid operator');
  }
}

void main() {
  print(basicCalculator(5, 3, '+')); // 8.0
  print(basicCalculator(10, 2, '-')); // 8.0
  print(basicCalculator(4, 5, '*')); // 20.0
  print(basicCalculator(9, 3, '/')); // 3.0
  try {
    print(basicCalculator(10, 0, '/')); // Throws error
  } catch (e) {
    print(e);
  }
}
