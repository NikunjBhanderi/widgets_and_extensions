// ignore_for_file: unused_element

extension IntExtension on int {
  // Number To In Words Format
  String toWord() {
    int number = this;
    if (number == 0) return 'શૂન્ય';

    final units = [
      '',
      'એક',
      'બે',
      'ત્રણ',
      'ચાર',
      'પાંચ',
      'છ',
      'સાત',
      'આઠ',
      'નવ',
      'દસ',
      'અગિયાર',
      'બાર',
      'તેર',
      'ચૌદ',
      'પંદર',
      'સોળ',
      'સત્તર',
      'અઢાર',
      'ઓગણીસ',
    ];

    final tens = [
      '',
      '',
      'વીસ',
      'ત્રીસ',
      'ચાલીસ',
      'પચાસ',
      'સાઠ',
      'સિત્તેર',
      'એંસી',
      'નેવું',
    ];

    String twoDigits(int n) {
      if (n < 20) return units[n];
      return tens[n ~/ 10] + (n % 10 != 0 ? ' ${units[n % 10]}' : '');
    }

    String threeDigits(int n) {
      if (n < 100) return twoDigits(n);
      return '${units[n ~/ 100]} સો${n % 100 != 0 ? ' ${twoDigits(n % 100)}' : ''}';
    }

    String result = '';

    if ((number ~/ 100000) > 0) {
      result += '${twoDigits(number ~/ 100000)} લાખ ';
      number %= 100000;
    }

    if ((number ~/ 1000) > 0) {
      result += '${twoDigits(number ~/ 1000)} હજાર ';
      number %= 1000;
    }

    if (number > 0) {
      result += threeDigits(number);
    }

    return result.trim();
  }
}
