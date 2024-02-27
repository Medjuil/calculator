import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator/data/repository/calculator_repository.dart';

void main() {

  group('Subtraction', () {
    final Calculator calculator = Calculator();

    test('Given Calculator class, When subtracting two positive numbers, then return positive output', () {
      expect(calculator.subtract(20.0, 10.0), 10.0);
    });

    test('Given Calculator class, When subtracting two negative numbers, then return negative output', () {
      expect(calculator.subtract(-5.0, -3.0), -2.0);
    });

    test('Given Calculator class, When subtracting two the same numbers, then return 0 output', () {
      expect(calculator.subtract(15.0, 15.0), 0.0);
    });

    test('Given Calculator class, When subtracting zero from a number, then return the number', () {
      expect(calculator.subtract(10.0, 0.0), 10.0);
    });

    test('Given Calculator class, When subtracting number from a zero, then return the number with negative sign', () {
      expect(calculator.subtract(0.0, 5.0), -5.0);
    });

    test('Given Calculator class, When subtracting with floating points, then return the approximate number output', () {
      expect(calculator.subtract(10.55, 5.25), moreOrLessEquals(5.3, epsilon: 0.001));
    });
  });
}