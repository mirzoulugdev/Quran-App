// State
part of 'surah_info_bloc.dart';

@immutable
sealed class SurahInfoState {}

final class SurahInfoInitial extends SurahInfoState {}

final class SurahInfoLoading extends SurahInfoState {}

final class SurahInfoSuccess extends SurahInfoState {
  final SurahInfoModel surahData;
  SurahInfoSuccess({required this.surahData});
}

final class SurahInfoUnSuccess extends SurahInfoState {}

final class SurahInfoError extends SurahInfoState {
  final String errorMessage;
  SurahInfoError({required this.errorMessage});
}

final class AudioPlaying extends SurahInfoState {
  final int index;
  final SurahInfoModel data;

  AudioPlaying({required this.data, required this.index});
}

final class AudioStopped extends SurahInfoState {}

final class PlayerUnSuccess extends SurahInfoState {}

final class AudioError extends SurahInfoState {
  final String message;
  AudioError({required this.message});
}
