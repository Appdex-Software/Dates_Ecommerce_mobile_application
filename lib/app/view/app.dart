import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../l10n/generated/l10n.dart';
import '../../src/core/constants/app_constants.dart';
import '../../src/core/routes/app_router.dart';
import '../../src/core/themes/app_themes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // final router = GetIt.instance<AppRouter>();
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarColor: FlutterFlowTheme.of(context).whiteColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      
      child:  MaterialApp.router(
        title: 'Date-Farm-Ecommerce',
        debugShowCheckedModeBanner: false,
        routerConfig: _appRouter.config(
            navigatorObservers: () => [MyObserver()],
          ),
        builder: (BuildContext context, Widget? child) {
            if (child == null) {
              logger.e('child is null', stackTrace: StackTrace.current);
              return Container();
            }

            return child;
          },
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.delegate.supportedLocales
      ),
    );
  }
}
