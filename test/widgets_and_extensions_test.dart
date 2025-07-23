import 'package:flutter_test/flutter_test.dart';
import 'package:widgets_and_extensions/widgets_and_extensions.dart';

void main() {
  test("String To CamelCase Format", () {
    expect("hello world".toCamelCase(), "Hello World");
    expect("hello flutter".toCamelCase(), "Hello Flutter");
    expect("hello dart".toCamelCase(), "Hello Dart");
  });

  test("To Indian Number Format", () {
    expect("1234567890".toIndianNoFormat(), "+91 12345 67890");
    expect("9638527410".toIndianNoFormat(), "+91 96385 27410");
  });

  test("To 12 Hour Format", () {
    expect("14:30".to12Hour(), "02:30 PM");
    expect("09:15".to12Hour(), "09:15 AM");
  });

  test("Is Valid Email", () {
    expect("usergmail.com".isValidEmail(), "user@gmail.com");
  });

  test("Number To Word Format", () {
    expect(2500.toWord(), "બે હજાર પાંચ સો");
    expect(1000.toWord(), "એક હજાર");
  });
}
