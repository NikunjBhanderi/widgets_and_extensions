extension DateTimeExtension on DateTime {
  String toDateFormat() {
    // Format: dd-mm-yyyy
    // Day and month should be two digits, year should be four digits

    if (month < 10 && day < 10) {
      return "0$day-0$month-$year";
    } else if (day < 10) {
      return "0$day-$month-$year";
    } else if (month < 10) {
      return "$day-0$month-$year";
    }
    return "$day-$month-$year";
  }
}
