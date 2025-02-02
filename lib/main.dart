import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
<<<<<<< HEAD
=======
import 'package:quran_app/core/di/service_locator.dart';
import 'package:quran_app/core/routes/app_router.dart';

>>>>>>> 646393a4bcb8bec197f2534f4cfe4e99530ec072
import 'package:quran_app/features/surahs/presentation/screens/surahs_screen.dart';



import 'package:quran_app/features/surahs/presentation/blocs/bloc/surah_info_bloc.dart';

void main() async {
  await init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: 'Quran App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SurahInfoBloc>()
            ..add(
              FetchSurahInfo(
                surahNumber: 1,
              ),
            ),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          title: 'Quran App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),

        ),

      ),


    );
  }
}
