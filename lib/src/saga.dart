import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:saga/src/notes/notes_view.dart';

import 'onboarding/onboarding_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class SagaApp extends StatelessWidget {
  const SagaApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.light(),
      themeMode: settingsController.themeMode,
      builder: (BuildContext context, Widget? child) {
        return ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(
            context,
            child!,
          ),
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(425, name: MOBILE),
            const ResponsiveBreakpoint.resize(600, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1024, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(1440, name: '4k'),
          ],
        );
      },
      onGenerateRoute: (RouteSettings routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SettingsView.routeName:
                return SettingsView(controller: settingsController);
              case OnboardingView.routeName:
                return const OnboardingView();
              case NotesView.routeName:
                return const NotesView();
              default:
                return const OnboardingView();
            }
          },
        );
      },
    );
  }
}
