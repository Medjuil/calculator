
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator/data/models/calculator.dart';

void main() {
  group('Calculator Tests', () {
    test('Given Calculator class, when subtraction is called and 1st number is greater than the 2nd, then output positive number', () {
      // Arrange
      final calculator = Calculator();
      final num1 = 10.0; 
      final num2 = 5.0; 
      // Act
      final result = calculator.subtract(num1, num2);
      // Assert
      expect(result, isPositive); 
    });
  });
}
