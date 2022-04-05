part of 'card_add_cubit.dart';

@freezed
class CardAddState with _$CardAddState {
  const CardAddState._();

  const factory CardAddState.initial() = _Initial;
  const factory CardAddState.loading() = _Loading;
  const factory CardAddState.success() = _Success;
  const factory CardAddState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeWhen(
        loading: () => true,
        orElse: () => false,
      );

  bool get isSuccess => maybeWhen(
        success: () => true,
        orElse: () => false,
      );
}
