import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/offers/offers_data_source.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/mocks/mock_factory.dart';

@Injectable(as: OffersDataSource)
class DummyOffersDataSource extends OffersDataSource {
  final MockFactory mockFactory;

  DummyOffersDataSource({
    required this.mockFactory,
  });

  @override
  Future<ResponseStatus<List<OfferModel>>> all() async {
    return ResponseStatus.success(
      mockFactory.offers.prepareAll(),
    );
  }
}
