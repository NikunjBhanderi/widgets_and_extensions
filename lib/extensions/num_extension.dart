// ignore_for_file: unused_element

extension NunExtension on num {
  // Number To Indian Currency Format
  String toINCurrancy() {
    return "₹$this";
  }

  // Number To USD Currency Format
  String toUSDCurrancy() {
    return "\$$this";
  }

  // Number To EURO Currency Format
  String toEUROCurrancy() {
    return "€$this";
  }
}
