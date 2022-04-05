import 'package:flutter/services.dart';

class CardDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    final String text = newValue.text;
    final StringBuffer buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      final int nonZeroIndex = i + 1;
      if (nonZeroIndex.isEven && nonZeroIndex != text.length) {
        buffer.write('/');
      }
    }
    final String newText = buffer.toString();
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(
        offset: newText.length,
      ),
    );
  }
}
