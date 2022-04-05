import 'package:flutter/material.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/data/storages/common_storage.dart';
import 'package:vizier/data/storages/token_storage.dart';
import 'package:vizier/ui/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.instance.setupInjection();
  final bool isFirstLaunch = await DI.resolve<CommonStorage>().getIsFirstLaunch();
  final bool isSessionActive = await DI.resolve<TokenStorage>().hasToken();

  runApp(
    MainApp(
      isFirstTimeOpened: isFirstLaunch,
      isSessionActive: isSessionActive,
    ),
  );
}
