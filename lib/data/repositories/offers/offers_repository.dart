import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class OffersRepository {
  Future<ResponseStatus<List<OfferModel>>> all();
}
