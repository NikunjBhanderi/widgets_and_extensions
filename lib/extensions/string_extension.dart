import 'package:intl/intl.dart';

extension StringExtension on String {
  // To Check Email Id Is Valid Or Not Valid
  // Example :
  // usergmail.com To user@gmail.com
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }

  // Normal Text To Camel Case Format Create
  // Example :
  // "hello world" to "Hello World"
  // "hello flutter" to "Hello Flutter"
  String toCamelCase() {
    if (isEmpty) return this;

    return split(' ')
        .mapIndexed((index, word) {
          if (index == 0) {
            return word.capitalize();
          }
          return word.capitalize();
        })
        .join()
        .trim();
  }

  String capitalize() {
    if (isEmpty) return this;
    return ' ${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  // String number to Indian Number Format
  String toIndianNoFormat() {
    if (length == 10) {
      return '+91 ${substring(0, 5)} ${substring(5)}';
    } else {
      return 'Invalid number';
    }
  }

  String toValue(dynamic value) {
    return replaceAll(
      "{{value}}",
      value.toString().isEmpty ? "-" : value.toString(),
    );
  }

  // String Time To 12 Hour Format
  // Example :
  // "14:30" to "02:30 PM"
  // "09:15" to "09:15 AM"
  String to12Hour() {
    return DateFormat(
      'hh:mm a',
    ).format(DateFormat('HH:mm').tryParse(this) ?? DateTime.now());
  }
}

extension IterableExtension<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E element) f) sync* {
    int index = 0;
    for (var element in this) {
      yield f(index++, element);
    }
  }
}
