import 'package:get_it/get_it.dart';
import 'package:quran_app/features/surahs/data/repositories/surah_info_repository_impl.dart';
import 'package:quran_app/features/surahs/presentation/blocs/bloc/surah_info_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  _initSurahInfoRepo();
}

void _initSurahInfoRepo() {
  getIt
    ..registerLazySingleton<SurahInfoRepositoryImpl>(
      () => SurahInfoRepositoryImpl(),
    )
    ..registerFactory(
      () => SurahInfoBloc(),
    );
}
