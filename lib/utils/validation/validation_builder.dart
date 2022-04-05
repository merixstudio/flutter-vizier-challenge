import 'package:flutter/material.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/utils/validation/validators_util.dart';

typedef ValidationRuleCallback = String? Function(String? value, BuildContext context);

class ValidationBuilder {
  final List<ValidationRuleCallback> rules = [];

  ValidationBuilder add(ValidationRuleCallback validator) {
    return this..rules.add(validator);
  }

  ValidationBuilder isValidEmail() {
    return add(
      (text, context) => ValidatorsUtil.isValidEmail(text) ? null : AppLoc.of(context).validationRuleIsValidEmail,
    );
  }

  ValidationBuilder isNotBlank() {
    return add(
      (text, context) => ValidatorsUtil.isNotBlank(text) ? null : AppLoc.of(context).validationRuleNotBlank,
    );
  }

  ValidationBuilder isValidCardCvv() {
    return add(
      (text, context) => ValidatorsUtil.isNotBlank(text) &&
              ValidatorsUtil.isNotLessThan(text ?? '', 3) &&
              ValidatorsUtil.isNotLongerThan(text ?? '', 3)
          ? null
          : AppLoc.of(context).validationRuleIsValidCardCvv,
    );
  }

  ValidationBuilder isValidCardExpiry() {
    return add((text, context) {
      final List<String> items = (text ?? '').split('/');
      final int nowMonth = DateTime.now().month;
      final int nowYear = DateTime.now().year;
      if (!ValidatorsUtil.isNotBlank(text)) {
        return AppLoc.of(context).validationRuleNotBlank;
      } else if ([
        !ValidatorsUtil.isNotLessThan(text ?? '', 5),
        !ValidatorsUtil.isNotLongerThan(text ?? '', 5),
        items.length == 2 && ((int.tryParse(items[0]) ?? 12) > 12),
      ].any((element) => element)) {
        return AppLoc.of(context).validationRuleIsValidDateFormat;
      } else if (items.length == 2 &&
          [
            (int.tryParse('20${items[1]}') ?? nowYear) < nowYear,
            ((int.tryParse('20${items[1]}') ?? nowYear) == nowYear && (int.tryParse(items[0]) ?? 12) < nowMonth)
          ].any((element) => element)) {
        return AppLoc.of(context).validationRuleIsValidCardExpiry;
      }
      return null;
    });
  }

  ValidationBuilder isValidCardNumber() {
    return add((text, context) {
      final String newText = (text ?? '').removeBlank();
      if (!ValidatorsUtil.isNotBlank(newText)) {
        return AppLoc.of(context).validationRuleNotBlank;
      } else if ([
        !ValidatorsUtil.isNotLessThan(newText, 16),
        !ValidatorsUtil.isNotLongerThan(newText, 16),
      ].any((element) => element)) {
        return AppLoc.of(context).validationRuleIsValidCardNumber;
      }
      return null;
    });
  }

  String? build(String? text, BuildContext context) {
    for (final rule in rules) {
      final result = rule(text, context);
      if (result != null) {
        return result;
      }
    }
    return null;
  }
}
