// ignore: avoid_classes_with_only_static_members
abstract class ValidatorsUtil {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
  );

  static bool isValidEmail(String? email) {
    return email != null && _emailRegExp.hasMatch(email);
  }

  static bool isNotEmpty(String text) {
    return text.isNotEmpty;
  }

  static bool isNotBlank(String? text) {
    if (text != null) {
      return isNotEmpty(text.trim());
    } else {
      return false;
    }
  }

  static bool isNotLongerThan(String text, int maxCharacters) {
    return text.length <= maxCharacters;
  }

  static bool isNotLessThan(String text, int minCharacters) {
    return text.length >= minCharacters;
  }

  static bool isGreaterThan(String text, int number) {
    final int? intValue = int.tryParse(text);
    if (intValue != null) {
      return intValue > number;
    }
    return true;
  }
}
