import 'package:json_annotation/json_annotation.dart';

part 'surah_info_model.g.dart';

@JsonSerializable()
class SurahInfoModel {
  @JsonKey(name: "code")
  final int code;
  @JsonKey(name: "status")
  final String status;
  @JsonKey(name: "data")
  final Data data;

  SurahInfoModel({
    required this.code,
    required this.status,
    required this.data,
  });

  factory SurahInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SurahInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$SurahInfoModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "number")
  final int number;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "englishName")
  final String englishName;
  @JsonKey(name: "englishNameTranslation")
  final String englishNameTranslation;
  @JsonKey(name: "revelationType")
  final String revelationType;
  @JsonKey(name: "numberOfAyahs")
  final int numberOfAyahs;
  @JsonKey(name: "ayahs")
  final List<Ayah> ayahs;
  @JsonKey(name: "edition")
  final Edition edition;

  Data({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.numberOfAyahs,
    required this.ayahs,
    required this.edition,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Ayah {
  @JsonKey(name: "number")
  final int number;
  @JsonKey(name: "audio")
  final String audio;
  @JsonKey(name: "audioSecondary")
  final List<String> audioSecondary;
  @JsonKey(name: "text")
  final String text;
  @JsonKey(name: "numberInSurah")
  final int numberInSurah;
  @JsonKey(name: "juz")
  final int juz;
  @JsonKey(name: "manzil")
  final int manzil;
  @JsonKey(name: "page")
  final int page;
  @JsonKey(name: "ruku")
  final int ruku;
  @JsonKey(name: "hizbQuarter")
  final int hizbQuarter;
  @JsonKey(name: "sajda")
  final bool sajda;

  Ayah({
    required this.number,
    required this.audio,
    required this.audioSecondary,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  factory Ayah.fromJson(Map<String, dynamic> json) => _$AyahFromJson(json);

  Map<String, dynamic> toJson() => _$AyahToJson(this);
}

@JsonSerializable()
class Edition {
  @JsonKey(name: "identifier")
  final String identifier;
  @JsonKey(name: "language")
  final String language;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "englishName")
  final String englishName;
  @JsonKey(name: "format")
  final String format;
  @JsonKey(name: "type")
  final String type;
  @JsonKey(name: "direction")
  final dynamic direction;

  Edition({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
    required this.direction,
  });

  factory Edition.fromJson(Map<String, dynamic> json) =>
      _$EditionFromJson(json);

  Map<String, dynamic> toJson() => _$EditionToJson(this);
}
