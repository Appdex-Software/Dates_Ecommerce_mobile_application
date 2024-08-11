import 'package:date_farm/src/core/constants/adaptive.dart';
import 'package:date_farm/src/core/provider/app_startup_provider.dart';
import 'package:date_farm/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/view/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AdaptiveUi.init();
  await await FlutterFlowTheme.initialize();
  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);
  runApp(UncontrolledProviderScope(
    container: container,
    child: const App()));
}
