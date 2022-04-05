import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_model.dart';

part 'offer_details_state.dart';
part 'offer_details_cubit.freezed.dart';

@injectable
class OfferDetailsCubit extends Cubit<OfferDetailsState> {
  OfferDetailsCubit() : super(OfferDetailsState.initial());

  void initial(OfferModel offer) => emit(
        state.copyWith(
          expectedValue: offer.expectedValue,
          sliders: offer.sliders,
        ),
      );

  void updateSlider(OfferSliderModel slider, double value) {
    emit(
      state.copyWith(
        sliders: state.sliders
            .map(
              (e) => e == slider
                  ? e.copyWith(
                      current: value,
                    )
                  : e,
            )
            .toList(),
      ),
    );

    emit(
      state.copyWith(
        calculatedValue: _calculateValue(),
      ),
    );
  }

  double _calculateValue() {
    //TODO (MT): Change logic
    final double leftToGoal = max((state.expectedValue ?? 0.0) - state.sliders.last.actualValue, 0);
    final double estPerMonth = state.sliders.first.actualValue * 1.3;
    return estPerMonth + leftToGoal / 300;
  }
}
