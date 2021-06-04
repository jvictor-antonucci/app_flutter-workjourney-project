import '../regex_util.dart';

extension ValidatorsExtension on String {
  /// check if string [str] matches the [pattern].
  bool matches(String pattern) {
    final RegExp re = RegExp(pattern);
    return re.hasMatch(this);
  }

  /// check if the string [str] is an email
  bool get isEmail => RegexUtils.email.hasMatch(toLowerCase());

  /// check if the string [str] contains only letters (a-zA-Z).
  bool get isAlpha => RegexUtils.alpha.hasMatch(this);

  /// check if the string [str] contains only numbers
  bool get isNumeric => RegexUtils.numeric.hasMatch(this);

  /// check if the string [str] contains only letters and numbers
  bool get isAlphanumeric => RegexUtils.alphanumeric.hasMatch(this);

  /// check if the string [str] is an integer
  bool get isInt => RegexUtils.int.hasMatch(this);

  /// check if the string [str] is a float
  bool get isFloat => RegexUtils.float.hasMatch(this);

  /// check if the string  [str]is a hexadecimal number
  bool get isHexadecimal => RegexUtils.hexadecimal.hasMatch(this);

  /// check if the string [str] is a hexadecimal color
  bool get isHexColor => RegexUtils.hexcolor.hasMatch(this);

  /// check if the string [str] is lowercase
  bool get isLowercase => this == toLowerCase();

  /// check if the string [str] is uppercase
  bool get isUppercase => this == toUpperCase();
}
