import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/ui/models/card_account_type.dart';

part 'card_form_state.dart';
part 'card_form_cubit.freezed.dart';

@injectable
class CardFormCubit extends Cubit<CardFormState> {
  CardFormCubit() : super(CardFormState.initial());

  void updateBilling(String billing) => emit(
        state.copyWith(
          billing: billing,
        ),
      );

  void updateCvv(String cvv) => emit(
        state.copyWith(
          cvv: cvv,
        ),
      );

  void updateExpiry(String expiry) => emit(
        state.copyWith(
          expiry: expiry,
        ),
      );

  void updateName(String name) => emit(
        state.copyWith(
          name: name,
        ),
      );

  void updateNumber(String number) => emit(
        state.copyWith(
          number: number,
        ),
      );

  void updateType(CardAccountType type) => emit(
        state.copyWith(
          type: type,
        ),
      );
}
