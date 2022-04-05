import 'package:vizier/config/injector/di.dart';
import 'package:vizier/utils/dummy_util.dart';

part 'animation_constants.dart';
part 'api_constants.dart';

class AppConstants {
  const AppConstants._();

  static const _AnimationConstants animation = _AnimationConstants();
  static const _ApiConstants api = _ApiConstants();
}
