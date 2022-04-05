import 'package:vizier/data/errors/app_error.dart';

class ResponseStatus<T> {
  final T? data;
  final AppError? error;

  ResponseStatus._({
    this.data,
    this.error,
  });

  factory ResponseStatus.success(T data) {
    return ResponseStatus._(
      data: data,
    );
  }

  factory ResponseStatus.error(Object error) {
    final AppError appError = AppError.unknownFailure(error);
    return ResponseStatus._(
      error: appError,
    );
  }

  void result({
    required Function(T) onSuccess,
    required Function(AppError) onError,
  }) {
    if (data != null) {
      onSuccess(data as T);
    } else if (error != null) {
      onError(error!);
    }
  }
}
