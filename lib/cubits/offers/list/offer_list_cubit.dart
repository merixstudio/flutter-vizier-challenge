import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/repositories/offers/offers_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'offer_list_state.dart';
part 'offer_list_cubit.freezed.dart';

@injectable
class OfferListCubit extends Cubit<OfferListState> {
  final OffersRepository offersRepository;

  OfferListCubit({
    required this.offersRepository,
  }) : super(const OfferListState.loading());

  Future<void> fetchData() async {
    emit(
      const OfferListState.loading(),
    );

    final ResponseStatus<List<OfferModel>> response = await offersRepository.all();
    response.result(
      onSuccess: (data) => emit(
        OfferListState.loaded(
          offers: data,
        ),
      ),
      onError: (error) => emit(
        OfferListState.failure(
          error: error,
        ),
      ),
    );
  }
}
