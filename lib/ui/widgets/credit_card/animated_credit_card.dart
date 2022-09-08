import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/models/card_account_type.dart';
import 'package:vizier/ui/widgets/animated_flip.dart';
import 'package:vizier/ui/widgets/animated_text.dart';

part 'credit_card_back.dart';
part 'credit_card_container.dart';
part 'credit_card_cvv.dart';
part 'credit_card_expiry.dart';
part 'credit_card_front.dart';
part 'credit_card_number.dart';

class AnimatedCreditCard extends StatelessWidget {
  final String balance;
  final String cvv;
  final String expiry;
  final String logo;
  final String number;
  final CardAccountType type;

  const AnimatedCreditCard({
    required this.expiry,
    required this.number,
    required this.type,
    this.balance = '',
    this.cvv = '',
    this.logo = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedFlip(
      back: _CreditCardBack(
        cvv: cvv,
      ),
      front: _CreditCardFront(
        balance: balance,
        expiry: expiry,
        logo: logo,
        number: number,
      ),
      isFront: type == CardAccountType.front,
    );
  }
}
