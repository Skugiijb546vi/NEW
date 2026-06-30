import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';
part 'models.g.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default("") String id,
    @Default("بەکارهێنەر") String userName,
    @Default("") String text,
    @Default("") String userImage,
    String? giftUrl,
    @Default(0) int timestamp,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
class Genre with _$Genre {
  const factory Genre({
    @Default(0) int id,
    @Default("") String title,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    @Default(0) int id,
    @Default("") String url,
    @Default("") String quality,
    @Default("") String type,
    String? size,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String image,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}

@freezed
class Episode with _$Episode {
  const factory Episode({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String url,
    @Default("") String? duration,
    @Default("") String image,
    @Default("") String description,
    @Default([]) List<Source>? sources,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}

@freezed
class Season with _$Season {
  const factory Season({
    @Default(0) int id,
    @Default("") String title,
    @Default([]) List<Episode> episodes,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}

@freezed
class Movie with _$Movie {
  const Movie._();
  const factory Movie({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String description,
    @Default(0) int price,
    String? badge_text,
    String? catchphrase,
    @Default("") String? translation,
    @Default(0) int year,
    @Default(0.0) double rating,
    @Default(0.0) double imdb,
    @Default("") String poster,
    @Default("") String image,
    @Default("") String url,
    @Default("movie") String type,
    @Default("") String? duration,
    @Default("") String cover,
    @Default(0) int genre_id,
    @Default(0) int views,
    @Default([]) List<Genre>? genres,
    @Default([]) List<Source>? sources,
    @Default([]) List<Country>? country,
    @Default([]) List<Episode>? episodes,
    @Default([]) List<Season>? seasons,
    String? pesh,
    
    @Default(false) bool isRoyalMember,
    @Default(0) int subscriptionExpiry,

    @Default([]) List<Comment>? comments,

    @Default(false) bool isDubbed,
    @Default("") String? dubbedAudioUrl,

    @JsonKey(name: 'subtitleKurdish') @Default("") String? subtitleKurdish,
    @JsonKey(name: 'subtitleEnglish') @Default("") String? subtitleEnglish,
    @JsonKey(name: 'subtitleArabic') @Default("") String? subtitleArabic,

    @Default(false) bool hasSubtitle,
    @Default(0) int introEndTime,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  String getThumbnail() {
    if (image.isNotEmpty) return image;
    if (poster.isNotEmpty) return poster;
    if (cover.isNotEmpty) return cover;
    return "";
  }
}

@freezed
class Series with _$Series {
  const Series._();
  const factory Series({
    @Default(0) int id,
    @Default("") String title,
    @Default("") String description,
    @Default(0) int price,
    String? badge_text,
    String? catchphrase,
    @Default("") String? translation,
    @Default(0) int year,
    @Default(0.0) double rating,
    @Default(0.0) double imdb,
    @Default("series") String type,
    @Default("") String? duration,
    @Default("") String image,
    @Default("") String cover,
    @Default("") String url,
    @Default([]) List<Genre>? genres,
    @Default([]) List<Country>? country,
    @Default([]) List<Season>? seasons,
    String? pesh,
    
    @Default(false) bool isRoyalMember,
    @Default(0) int subscriptionExpiry,
    
    @Default([]) List<Comment>? comments,

    @Default(false) bool isDubbed,
    @Default("") String? dubbedAudioUrl,

    @JsonKey(name: 'subtitleKurdish') @Default("") String? subtitleKurdish,
    @JsonKey(name: 'subtitleEnglish') @Default("") String? subtitleEnglish,
    @JsonKey(name: 'subtitleArabic') @Default("") String? subtitleArabic,

    @Default(false) bool hasSubtitle,
    @Default(0) int introEndTime,
    @Default(0) int genre_id,
  }) = _Series;

  factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);

  String getThumbnail() {
    if (image.isNotEmpty) return image;
    if (cover.isNotEmpty) return cover;
    return "";
  }
}
