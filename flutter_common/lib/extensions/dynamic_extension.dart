import 'package:intl/intl.dart';

extension DynamicExtension on dynamic {
  String get formatCurrency {
    const locale = 'vi';
    const currencyName = 'đ';
    const errorText = '0';
    final formatter = NumberFormat.currency(
        locale: locale,
        name: currencyName,
        decimalDigits: 0,
        customPattern: '#,##0.00\u00A4');
    switch (runtimeType) {
      case num:
      case int:
      case double:
        return formatter.format(this);
      case String:
        final value = double.tryParse(this);
        if (value == null) {
          return errorText;
        }
        return formatter.format(value);
      default:
        return errorText;
    }
  }
}
