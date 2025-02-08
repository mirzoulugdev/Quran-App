import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/core/di/service_locator.dart';
import 'package:quran_app/features/surahs/data/models/surah_info_model.dart';
import 'package:quran_app/features/surahs/data/repositories/surah_info_repository_impl.dart';

part 'surah_info_event.dart';
part 'surah_info_state.dart';

class SurahInfoBloc extends Bloc<SurahInfoEvent, SurahInfoState> {
  SurahInfoBloc() : super(SurahInfoInitial()) {
    on<FetchSurahInfo>((event, emit) async {
      emit(SurahInfoLoading());
      try {
        final response = await getIt<SurahInfoRepositoryImpl>()
            .getSurahInfo(surahNumber: event.surahNumber);
        emit(SurahInfoSuccess(surahData: SurahInfoModel.fromJson(response!)));
      } catch (e) {
        emit(SurahInfoError(errorMessage: e.toString()));
      }
    });
  }
}
