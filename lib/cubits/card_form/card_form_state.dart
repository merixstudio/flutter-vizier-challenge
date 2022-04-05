part of 'card_form_cubit.dart';

@freezed
class CardFormState with _$CardFormState {
  const factory CardFormState({
    required String billing,
    required String cvv,
    required String expiry,
    required String name,
    required String number,
    required CardAccountType type,
  }) = _CardFormState;

  const CardFormState._();

  factory CardFormState.initial() => const CardFormState(
        billing: '',
        cvv: '',
        expiry: '',
        name: '',
        number: '',
        type: CardAccountType.front,
      );

  AccountModel get account => AccountModel(
        balance: 0.0,
        change: 0.0,
        expiry: expiry,
        logo: '',
        name: name,
        number: number,
      );
}
