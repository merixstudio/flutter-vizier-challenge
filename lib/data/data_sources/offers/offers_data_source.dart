import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class OffersDataSource {
  Future<ResponseStatus<List<OfferModel>>> all();
}
