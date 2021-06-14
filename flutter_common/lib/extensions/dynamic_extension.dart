import 'package:intl/intl.dart';

extension DynamicExtension on dynamic {
  String get formatCurrencyNoName {
    final locale = 'vi';
    final currencyName = '';
    final errorText = '0';
    var formatter = NumberFormat.currency(locale: locale, name: currencyName, decimalDigits: 0, customPattern: "#,##0.00\u00A4");
    switch (this.runtimeType) {
      case num:
      case int:
      case double:
        return formatter.format(this);
      case String:
        var value = double.tryParse(this);
        if (value == null) {
          return errorText;
        }
        return formatter.format(value);
      default:
        return errorText;
    }
  }  String get formatCurrency {
    final locale = 'vi';
    final errorText = '0';
    var formatter = NumberFormat.currency(locale: locale,  decimalDigits: 0, customPattern: "#,##0.00\u00A4");
    switch (this.runtimeType) {
      case num:
      case int:
      case double:
        return formatter.format(this);
      case String:
        var value = double.tryParse(this);
        if (value == null) {
          return errorText;
        }
        return formatter.format(value);
      default:
        return errorText;
    }
  }
}
