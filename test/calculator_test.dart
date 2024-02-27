import 'package:calculator/calculator/data/repository/calculator_repository.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
late CalculatorRepository calculatorRepository;
setUp(() {
  calculatorRepository = CalculatorRepository();
});

group('Addition', () { 
  test('Addition:Given two numbers, When add method is called, Then the sum is calculated correctly', (){
 // Given
  int number1 = 2;
  int number2 = 3;
  // When
  int result =  calculatorRepository.addition(number1, number2);
  // Then
  expect(result, equals(5));
});

test('Addition: Given two negative numbers, When add method is called, Then the sum is calculated correctly', () {
  // Given
  int number1 = -1;
  int number2 = 1;
  // When
  int result = calculatorRepository.addition(number1, number2);
  // Then
  expect(result, equals(0));
});
});



    group('Subtraction', () {

    test('Given Calculator class, When subtracting two positive numbers, then return positive output', () {
      expect(calculatorRepository.subtraction(20.0, 10.0), 10.0);
    });

    test('Given Calculator class, When subtracting two negative numbers, then return negative output', () {
      expect(calculatorRepository.subtraction(-5.0, -3.0), -2.0);
    });

    test('Given Calculator class, When subtracting two the same numbers, then return 0 output', () {
      expect(calculatorRepository.subtraction(15.0, 15.0), 0.0);
    });

    test('Given Calculator class, When subtracting zero from a number, then return the number', () {
      expect(calculatorRepository.subtraction(10.0, 0.0), 10.0);
    });

    test('Given Calculator class, When subtracting number from a zero, then return the number with negative sign', () {
      expect(calculatorRepository.subtraction(0.0, 5.0), -5.0);
    });

    test('Given Calculator class, When subtracting with floating points, then return the approximate number output', () {
      expect(calculatorRepository.subtraction(10.55, 5.25), moreOrLessEquals(5.3, epsilon: 0.001));
    });

    });

}
