import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user.dart';
import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user_data.dart';
import 'package:date_farm/src/core/constants/adaptive.dart';
import 'package:date_farm/src/core/provider/app_startup_provider.dart';
import 'package:date_farm/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'app/view/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive
    ..initFlutter(appDocumentDirectory.path)
    ..registerAdapter(UserDataAdapter());
  Hive.registerAdapter(UserInfoAdapter());
  AdaptiveUi.init();
  await await FlutterFlowTheme.initialize();
  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);
  runApp(UncontrolledProviderScope(container: container, child: const App()));
}
