import 'package:boringbookkeepingbusiness/app/cubit/app_cubit.dart';
import 'package:boringbookkeepingbusiness/counter/counter.dart';
import 'package:boringbookkeepingbusiness/l10n/l10n.dart';
import 'package:boringbookkeepingbusiness/landing_page/landing_page.dart';
import 'package:boringbookkeepingbusiness/reviews/reviews.dart';
import 'package:boringbookkeepingbusiness/services_page/services_page.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_repository/review_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  // final reviewRepository = const ReviewRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Boring Bookkeeping Business',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 58, 62, 183),
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.archivoBlack(
            fontSize: 80,
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
          titleMedium: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          titleSmall: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          displaySmall: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          titleLarge: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
          bodyMedium: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: RepositoryProvider(
        create: (context) => const ReviewRepository(),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AppCubit(),
      child: const AppFlow(),
    );
  }
}

class AppFlow extends StatelessWidget {
  const AppFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return FlowBuilder<AppState>(
      state: context.select((AppCubit cubit) => cubit.state),
      onGeneratePages: (AppState state, List<Page> pages) {
        switch (state) {
          case AppState.landing:
            return [LandingPage.page()];
          case AppState.services:
            return [ServicesPage.page()];
        }
      },
    );
  }
}
