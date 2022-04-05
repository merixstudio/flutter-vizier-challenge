import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/config/injector/di.config.dart';

@InjectableInit()
class DI {
  DI._();

  final GetIt _getIt = GetIt.I;

  static final DI instance = DI._();

  Future<void> setupInjection() async => $initGetIt(_getIt);

  // Use this to get registered instance
  static T resolve<T extends Object>() => instance._getIt.get();
}
