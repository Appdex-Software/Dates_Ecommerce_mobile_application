import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../l10n/generated/l10n.dart';
import '../../src/core/constants/app_constants.dart';
import '../../src/core/constants/app_strings.dart';
import '../../src/core/routes/app_router.dart';
import '../../src/core/themes/app_themes.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
    return ResponsiveApp(builder: (context) {
      return MaterialApp.router(
          title: 'Date-Farm-Ecommerce',
          locale: const Locale('ar'),
          theme: ThemeData(
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.white,
            ),
            dialogTheme: const DialogTheme(
              backgroundColor: Colors.white,
            ),
            fontFamily: AppStrings.arabicFont,
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
          darkTheme: ThemeData(
            fontFamily: AppStrings.arabicFont,
            // brightness: Brightness.dark,
            bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.white,
            ),
            dialogTheme: const DialogTheme(
              backgroundColor: Colors.white,
            ),
            scrollbarTheme: ScrollbarThemeData(
              thumbVisibility: WidgetStateProperty.all(false),
              trackVisibility: WidgetStateProperty.all(false),
              interactive: true,
              thumbColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.dragged)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                if (states.contains(WidgetState.hovered)) {
                  return FlutterFlowTheme.of(context).whiteColor;
                }
                return FlutterFlowTheme.of(context).whiteColor;
              }),
            ),
          ),
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
          supportedLocales: AppLocalizations.delegate.supportedLocales);
    });
  }
}
