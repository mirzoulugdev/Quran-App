part of 'surah_info_bloc.dart';

@immutable
sealed class SurahInfoEvent {}

final class FetchSurahInfo extends SurahInfoEvent {
  final int surahNumber;
  FetchSurahInfo({
    required this.surahNumber,
  });
}

final class Play extends SurahInfoEvent {
  final String surahAudioUrl;
  final bool isPLaying;
  Play({
    required this.isPLaying,
    required this.surahAudioUrl,
  });
}

final class Pause extends SurahInfoEvent {}

final class Save extends SurahInfoEvent {}
