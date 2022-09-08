import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/offers/offers_data_source.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/repositories/offers/offers_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

@Injectable(as: OffersRepository)
class DataOffersRepository extends OffersRepository {
  final OffersDataSource offersDataSource;

  DataOffersRepository({
    required this.offersDataSource,
  });

  @override
  Future<ResponseStatus<List<OfferModel>>> all() async {
    try {
      final ResponseStatus<List<OfferModel>> response =
          await offersDataSource.all();
      return ResponseStatus<List<OfferModel>>.success(response.data!);
    } catch (error) {
      return ResponseStatus<List<OfferModel>>.error(error);
    }
  }
}
