
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran_app/core/routes/app_router_names.dart';
import 'package:quran_app/features/surahs/presentation/screens/surah_info_screen.dart';
import 'package:quran_app/features/surahs/presentation/screens/surah_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRouterNames.surahInfo,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRouterNames.surahInfo,
        name: AppRouterNames.surahInfo,
        builder: (context, state) => SurahInfoScreen(),
      ),
      GoRoute(
        path: AppRouterNames.surah,
        name: AppRouterNames.surah,
        builder: (context, state) => SurahScreen(),
      ),
    ],
  );
}

