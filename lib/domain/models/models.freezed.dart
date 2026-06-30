// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String get id => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get userImage => throw _privateConstructorUsedError;
  String? get giftUrl => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String id,
      String userName,
      String text,
      String userImage,
      String? giftUrl,
      int timestamp});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? text = null,
    Object? userImage = null,
    Object? giftUrl = freezed,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: null == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      giftUrl: freezed == giftUrl
          ? _value.giftUrl
          : giftUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userName,
      String text,
      String userImage,
      String? giftUrl,
      int timestamp});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userName = null,
    Object? text = null,
    Object? userImage = null,
    Object? giftUrl = freezed,
    Object? timestamp = null,
  }) {
    return _then(_$CommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      userImage: null == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String,
      giftUrl: freezed == giftUrl
          ? _value.giftUrl
          : giftUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(
      {this.id = "",
      this.userName = "بەکارهێنەر",
      this.text = "",
      this.userImage = "",
      this.giftUrl,
      this.timestamp = 0});

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String userName;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String userImage;
  @override
  final String? giftUrl;
  @override
  @JsonKey()
  final int timestamp;

  @override
  String toString() {
    return 'Comment(id: $id, userName: $userName, text: $text, userImage: $userImage, giftUrl: $giftUrl, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.giftUrl, giftUrl) || other.giftUrl == giftUrl) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userName, text, userImage, giftUrl, timestamp);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {final String id,
      final String userName,
      final String text,
      final String userImage,
      final String? giftUrl,
      final int timestamp}) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get id;
  @override
  String get userName;
  @override
  String get text;
  @override
  String get userImage;
  @override
  String? get giftUrl;
  @override
  int get timestamp;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this Genre to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenreImplCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$GenreImplCopyWith(
          _$GenreImpl value, $Res Function(_$GenreImpl) then) =
      __$$GenreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$GenreImplCopyWithImpl<$Res>
    extends _$GenreCopyWithImpl<$Res, _$GenreImpl>
    implements _$$GenreImplCopyWith<$Res> {
  __$$GenreImplCopyWithImpl(
      _$GenreImpl _value, $Res Function(_$GenreImpl) _then)
      : super(_value, _then);

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$GenreImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenreImpl implements _Genre {
  const _$GenreImpl({this.id = 0, this.title = ""});

  factory _$GenreImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenreImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'Genre(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenreImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      __$$GenreImplCopyWithImpl<_$GenreImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenreImplToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({final int id, final String title}) = _$GenreImpl;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$GenreImpl.fromJson;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of Genre
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenreImplCopyWith<_$GenreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Source _$SourceFromJson(Map<String, dynamic> json) {
  return _Source.fromJson(json);
}

/// @nodoc
mixin _$Source {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  /// Serializes this Source to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call({int id, String url, String quality, String type, String? size});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? quality = null,
    Object? type = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$SourceImplCopyWith(
          _$SourceImpl value, $Res Function(_$SourceImpl) then) =
      __$$SourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String quality, String type, String? size});
}

/// @nodoc
class __$$SourceImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$SourceImpl>
    implements _$$SourceImplCopyWith<$Res> {
  __$$SourceImplCopyWithImpl(
      _$SourceImpl _value, $Res Function(_$SourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? quality = null,
    Object? type = null,
    Object? size = freezed,
  }) {
    return _then(_$SourceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImpl implements _Source {
  const _$SourceImpl(
      {this.id = 0,
      this.url = "",
      this.quality = "",
      this.type = "",
      this.size});

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String quality;
  @override
  @JsonKey()
  final String type;
  @override
  final String? size;

  @override
  String toString() {
    return 'Source(id: $id, url: $url, quality: $quality, type: $type, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, quality, type, size);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      __$$SourceImplCopyWithImpl<_$SourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImplToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(
      {final int id,
      final String url,
      final String quality,
      final String type,
      final String? size}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get quality;
  @override
  String get type;
  @override
  String? get size;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
mixin _$Country {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this Country to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res, Country>;
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res, $Val extends Country>
    implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryImplCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$$CountryImplCopyWith(
          _$CountryImpl value, $Res Function(_$CountryImpl) then) =
      __$$CountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class __$$CountryImplCopyWithImpl<$Res>
    extends _$CountryCopyWithImpl<$Res, _$CountryImpl>
    implements _$$CountryImplCopyWith<$Res> {
  __$$CountryImplCopyWithImpl(
      _$CountryImpl _value, $Res Function(_$CountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$CountryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryImpl implements _Country {
  const _$CountryImpl({this.id = 0, this.title = "", this.image = ""});

  factory _$CountryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String image;

  @override
  String toString() {
    return 'Country(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      __$$CountryImplCopyWithImpl<_$CountryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryImplToJson(
      this,
    );
  }
}

abstract class _Country implements Country {
  const factory _Country(
      {final int id, final String title, final String image}) = _$CountryImpl;

  factory _Country.fromJson(Map<String, dynamic> json) = _$CountryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;

  /// Create a copy of Country
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryImplCopyWith<_$CountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<Source>? get sources => throw _privateConstructorUsedError;

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      String? duration,
      String image,
      String description,
      List<Source>? sources});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? duration = freezed,
    Object? image = null,
    Object? description = null,
    Object? sources = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String url,
      String? duration,
      String image,
      String description,
      List<Source>? sources});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? duration = freezed,
    Object? image = null,
    Object? description = null,
    Object? sources = freezed,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  const _$EpisodeImpl(
      {this.id = 0,
      this.title = "",
      this.url = "",
      this.duration = "",
      this.image = "",
      this.description = "",
      final List<Source>? sources = const []})
      : _sources = sources;

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String? duration;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String description;
  final List<Source>? _sources;
  @override
  @JsonKey()
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Episode(id: $id, title: $title, url: $url, duration: $duration, image: $image, description: $description, sources: $sources)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url, duration, image,
      description, const DeepCollectionEquality().hash(_sources));

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {final int id,
      final String title,
      final String url,
      final String? duration,
      final String image,
      final String description,
      final List<Source>? sources}) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String? get duration;
  @override
  String get image;
  @override
  String get description;
  @override
  List<Source>? get sources;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Episode> get episodes => throw _privateConstructorUsedError;

  /// Serializes this Season to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call({int id, String title, List<Episode> episodes});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? episodes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
          _$SeasonImpl value, $Res Function(_$SeasonImpl) then) =
      __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, List<Episode> episodes});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
      _$SeasonImpl _value, $Res Function(_$SeasonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? episodes = null,
  }) {
    return _then(_$SeasonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonImpl implements _Season {
  const _$SeasonImpl(
      {this.id = 0, this.title = "", final List<Episode> episodes = const []})
      : _episodes = episodes;

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  final List<Episode> _episodes;
  @override
  @JsonKey()
  List<Episode> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'Season(id: $id, title: $title, episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_episodes));

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  const factory _Season(
      {final int id,
      final String title,
      final List<Episode> episodes}) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  List<Episode> get episodes;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get badge_text => throw _privateConstructorUsedError;
  String? get catchphrase => throw _privateConstructorUsedError;
  String? get translation => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  double get imdb => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  int get genre_id => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  List<Source>? get sources => throw _privateConstructorUsedError;
  List<Country>? get country => throw _privateConstructorUsedError;
  List<Episode>? get episodes => throw _privateConstructorUsedError;
  List<Season>? get seasons => throw _privateConstructorUsedError;
  String? get pesh => throw _privateConstructorUsedError;
  bool get isRoyalMember => throw _privateConstructorUsedError;
  int get subscriptionExpiry => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;
  bool get isDubbed => throw _privateConstructorUsedError;
  String? get dubbedAudioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleKurdish')
  String? get subtitleKurdish => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleEnglish')
  String? get subtitleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleArabic')
  String? get subtitleArabic => throw _privateConstructorUsedError;
  bool get hasSubtitle => throw _privateConstructorUsedError;
  int get introEndTime => throw _privateConstructorUsedError;

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      String? badge_text,
      String? catchphrase,
      String? translation,
      int year,
      double rating,
      double imdb,
      String poster,
      String image,
      String url,
      String type,
      String? duration,
      String cover,
      int genre_id,
      int views,
      List<Genre>? genres,
      List<Source>? sources,
      List<Country>? country,
      List<Episode>? episodes,
      List<Season>? seasons,
      String? pesh,
      bool isRoyalMember,
      int subscriptionExpiry,
      List<Comment>? comments,
      bool isDubbed,
      String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') String? subtitleArabic,
      bool hasSubtitle,
      int introEndTime});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? badge_text = freezed,
    Object? catchphrase = freezed,
    Object? translation = freezed,
    Object? year = null,
    Object? rating = null,
    Object? imdb = null,
    Object? poster = null,
    Object? image = null,
    Object? url = null,
    Object? type = null,
    Object? duration = freezed,
    Object? cover = null,
    Object? genre_id = null,
    Object? views = null,
    Object? genres = freezed,
    Object? sources = freezed,
    Object? country = freezed,
    Object? episodes = freezed,
    Object? seasons = freezed,
    Object? pesh = freezed,
    Object? isRoyalMember = null,
    Object? subscriptionExpiry = null,
    Object? comments = freezed,
    Object? isDubbed = null,
    Object? dubbedAudioUrl = freezed,
    Object? subtitleKurdish = freezed,
    Object? subtitleEnglish = freezed,
    Object? subtitleArabic = freezed,
    Object? hasSubtitle = null,
    Object? introEndTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      badge_text: freezed == badge_text
          ? _value.badge_text
          : badge_text // ignore: cast_nullable_to_non_nullable
              as String?,
      catchphrase: freezed == catchphrase
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      genre_id: null == genre_id
          ? _value.genre_id
          : genre_id // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      episodes: freezed == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
      pesh: freezed == pesh
          ? _value.pesh
          : pesh // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoyalMember: null == isRoyalMember
          ? _value.isRoyalMember
          : isRoyalMember // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionExpiry: null == subscriptionExpiry
          ? _value.subscriptionExpiry
          : subscriptionExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      isDubbed: null == isDubbed
          ? _value.isDubbed
          : isDubbed // ignore: cast_nullable_to_non_nullable
              as bool,
      dubbedAudioUrl: freezed == dubbedAudioUrl
          ? _value.dubbedAudioUrl
          : dubbedAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleKurdish: freezed == subtitleKurdish
          ? _value.subtitleKurdish
          : subtitleKurdish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleEnglish: freezed == subtitleEnglish
          ? _value.subtitleEnglish
          : subtitleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleArabic: freezed == subtitleArabic
          ? _value.subtitleArabic
          : subtitleArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubtitle: null == hasSubtitle
          ? _value.hasSubtitle
          : hasSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      introEndTime: null == introEndTime
          ? _value.introEndTime
          : introEndTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      String? badge_text,
      String? catchphrase,
      String? translation,
      int year,
      double rating,
      double imdb,
      String poster,
      String image,
      String url,
      String type,
      String? duration,
      String cover,
      int genre_id,
      int views,
      List<Genre>? genres,
      List<Source>? sources,
      List<Country>? country,
      List<Episode>? episodes,
      List<Season>? seasons,
      String? pesh,
      bool isRoyalMember,
      int subscriptionExpiry,
      List<Comment>? comments,
      bool isDubbed,
      String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') String? subtitleArabic,
      bool hasSubtitle,
      int introEndTime});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? badge_text = freezed,
    Object? catchphrase = freezed,
    Object? translation = freezed,
    Object? year = null,
    Object? rating = null,
    Object? imdb = null,
    Object? poster = null,
    Object? image = null,
    Object? url = null,
    Object? type = null,
    Object? duration = freezed,
    Object? cover = null,
    Object? genre_id = null,
    Object? views = null,
    Object? genres = freezed,
    Object? sources = freezed,
    Object? country = freezed,
    Object? episodes = freezed,
    Object? seasons = freezed,
    Object? pesh = freezed,
    Object? isRoyalMember = null,
    Object? subscriptionExpiry = null,
    Object? comments = freezed,
    Object? isDubbed = null,
    Object? dubbedAudioUrl = freezed,
    Object? subtitleKurdish = freezed,
    Object? subtitleEnglish = freezed,
    Object? subtitleArabic = freezed,
    Object? hasSubtitle = null,
    Object? introEndTime = null,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      badge_text: freezed == badge_text
          ? _value.badge_text
          : badge_text // ignore: cast_nullable_to_non_nullable
              as String?,
      catchphrase: freezed == catchphrase
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      genre_id: null == genre_id
          ? _value.genre_id
          : genre_id // ignore: cast_nullable_to_non_nullable
              as int,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      sources: freezed == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<Source>?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      episodes: freezed == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>?,
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
      pesh: freezed == pesh
          ? _value.pesh
          : pesh // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoyalMember: null == isRoyalMember
          ? _value.isRoyalMember
          : isRoyalMember // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionExpiry: null == subscriptionExpiry
          ? _value.subscriptionExpiry
          : subscriptionExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      isDubbed: null == isDubbed
          ? _value.isDubbed
          : isDubbed // ignore: cast_nullable_to_non_nullable
              as bool,
      dubbedAudioUrl: freezed == dubbedAudioUrl
          ? _value.dubbedAudioUrl
          : dubbedAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleKurdish: freezed == subtitleKurdish
          ? _value.subtitleKurdish
          : subtitleKurdish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleEnglish: freezed == subtitleEnglish
          ? _value.subtitleEnglish
          : subtitleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleArabic: freezed == subtitleArabic
          ? _value.subtitleArabic
          : subtitleArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubtitle: null == hasSubtitle
          ? _value.hasSubtitle
          : hasSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      introEndTime: null == introEndTime
          ? _value.introEndTime
          : introEndTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl extends _Movie {
  const _$MovieImpl(
      {this.id = 0,
      this.title = "",
      this.description = "",
      this.price = 0,
      this.badge_text,
      this.catchphrase,
      this.translation = "",
      this.year = 0,
      this.rating = 0.0,
      this.imdb = 0.0,
      this.poster = "",
      this.image = "",
      this.url = "",
      this.type = "movie",
      this.duration = "",
      this.cover = "",
      this.genre_id = 0,
      this.views = 0,
      final List<Genre>? genres = const [],
      final List<Source>? sources = const [],
      final List<Country>? country = const [],
      final List<Episode>? episodes = const [],
      final List<Season>? seasons = const [],
      this.pesh,
      this.isRoyalMember = false,
      this.subscriptionExpiry = 0,
      final List<Comment>? comments = const [],
      this.isDubbed = false,
      this.dubbedAudioUrl = "",
      @JsonKey(name: 'subtitleKurdish') this.subtitleKurdish = "",
      @JsonKey(name: 'subtitleEnglish') this.subtitleEnglish = "",
      @JsonKey(name: 'subtitleArabic') this.subtitleArabic = "",
      this.hasSubtitle = false,
      this.introEndTime = 0})
      : _genres = genres,
        _sources = sources,
        _country = country,
        _episodes = episodes,
        _seasons = seasons,
        _comments = comments,
        super._();

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int price;
  @override
  final String? badge_text;
  @override
  final String? catchphrase;
  @override
  @JsonKey()
  final String? translation;
  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final double imdb;
  @override
  @JsonKey()
  final String poster;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String? duration;
  @override
  @JsonKey()
  final String cover;
  @override
  @JsonKey()
  final int genre_id;
  @override
  @JsonKey()
  final int views;
  final List<Genre>? _genres;
  @override
  @JsonKey()
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Source>? _sources;
  @override
  @JsonKey()
  List<Source>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Country>? _country;
  @override
  @JsonKey()
  List<Country>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Episode>? _episodes;
  @override
  @JsonKey()
  List<Episode>? get episodes {
    final value = _episodes;
    if (value == null) return null;
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Season>? _seasons;
  @override
  @JsonKey()
  List<Season>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pesh;
  @override
  @JsonKey()
  final bool isRoyalMember;
  @override
  @JsonKey()
  final int subscriptionExpiry;
  final List<Comment>? _comments;
  @override
  @JsonKey()
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isDubbed;
  @override
  @JsonKey()
  final String? dubbedAudioUrl;
  @override
  @JsonKey(name: 'subtitleKurdish')
  final String? subtitleKurdish;
  @override
  @JsonKey(name: 'subtitleEnglish')
  final String? subtitleEnglish;
  @override
  @JsonKey(name: 'subtitleArabic')
  final String? subtitleArabic;
  @override
  @JsonKey()
  final bool hasSubtitle;
  @override
  @JsonKey()
  final int introEndTime;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, description: $description, price: $price, badge_text: $badge_text, catchphrase: $catchphrase, translation: $translation, year: $year, rating: $rating, imdb: $imdb, poster: $poster, image: $image, url: $url, type: $type, duration: $duration, cover: $cover, genre_id: $genre_id, views: $views, genres: $genres, sources: $sources, country: $country, episodes: $episodes, seasons: $seasons, pesh: $pesh, isRoyalMember: $isRoyalMember, subscriptionExpiry: $subscriptionExpiry, comments: $comments, isDubbed: $isDubbed, dubbedAudioUrl: $dubbedAudioUrl, subtitleKurdish: $subtitleKurdish, subtitleEnglish: $subtitleEnglish, subtitleArabic: $subtitleArabic, hasSubtitle: $hasSubtitle, introEndTime: $introEndTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.badge_text, badge_text) ||
                other.badge_text == badge_text) &&
            (identical(other.catchphrase, catchphrase) ||
                other.catchphrase == catchphrase) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imdb, imdb) || other.imdb == imdb) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.genre_id, genre_id) ||
                other.genre_id == genre_id) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.pesh, pesh) || other.pesh == pesh) &&
            (identical(other.isRoyalMember, isRoyalMember) ||
                other.isRoyalMember == isRoyalMember) &&
            (identical(other.subscriptionExpiry, subscriptionExpiry) ||
                other.subscriptionExpiry == subscriptionExpiry) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isDubbed, isDubbed) ||
                other.isDubbed == isDubbed) &&
            (identical(other.dubbedAudioUrl, dubbedAudioUrl) ||
                other.dubbedAudioUrl == dubbedAudioUrl) &&
            (identical(other.subtitleKurdish, subtitleKurdish) ||
                other.subtitleKurdish == subtitleKurdish) &&
            (identical(other.subtitleEnglish, subtitleEnglish) ||
                other.subtitleEnglish == subtitleEnglish) &&
            (identical(other.subtitleArabic, subtitleArabic) ||
                other.subtitleArabic == subtitleArabic) &&
            (identical(other.hasSubtitle, hasSubtitle) ||
                other.hasSubtitle == hasSubtitle) &&
            (identical(other.introEndTime, introEndTime) ||
                other.introEndTime == introEndTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        price,
        badge_text,
        catchphrase,
        translation,
        year,
        rating,
        imdb,
        poster,
        image,
        url,
        type,
        duration,
        cover,
        genre_id,
        views,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_sources),
        const DeepCollectionEquality().hash(_country),
        const DeepCollectionEquality().hash(_episodes),
        const DeepCollectionEquality().hash(_seasons),
        pesh,
        isRoyalMember,
        subscriptionExpiry,
        const DeepCollectionEquality().hash(_comments),
        isDubbed,
        dubbedAudioUrl,
        subtitleKurdish,
        subtitleEnglish,
        subtitleArabic,
        hasSubtitle,
        introEndTime
      ]);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  const factory _Movie(
      {final int id,
      final String title,
      final String description,
      final int price,
      final String? badge_text,
      final String? catchphrase,
      final String? translation,
      final int year,
      final double rating,
      final double imdb,
      final String poster,
      final String image,
      final String url,
      final String type,
      final String? duration,
      final String cover,
      final int genre_id,
      final int views,
      final List<Genre>? genres,
      final List<Source>? sources,
      final List<Country>? country,
      final List<Episode>? episodes,
      final List<Season>? seasons,
      final String? pesh,
      final bool isRoyalMember,
      final int subscriptionExpiry,
      final List<Comment>? comments,
      final bool isDubbed,
      final String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') final String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') final String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') final String? subtitleArabic,
      final bool hasSubtitle,
      final int introEndTime}) = _$MovieImpl;
  const _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  String? get badge_text;
  @override
  String? get catchphrase;
  @override
  String? get translation;
  @override
  int get year;
  @override
  double get rating;
  @override
  double get imdb;
  @override
  String get poster;
  @override
  String get image;
  @override
  String get url;
  @override
  String get type;
  @override
  String? get duration;
  @override
  String get cover;
  @override
  int get genre_id;
  @override
  int get views;
  @override
  List<Genre>? get genres;
  @override
  List<Source>? get sources;
  @override
  List<Country>? get country;
  @override
  List<Episode>? get episodes;
  @override
  List<Season>? get seasons;
  @override
  String? get pesh;
  @override
  bool get isRoyalMember;
  @override
  int get subscriptionExpiry;
  @override
  List<Comment>? get comments;
  @override
  bool get isDubbed;
  @override
  String? get dubbedAudioUrl;
  @override
  @JsonKey(name: 'subtitleKurdish')
  String? get subtitleKurdish;
  @override
  @JsonKey(name: 'subtitleEnglish')
  String? get subtitleEnglish;
  @override
  @JsonKey(name: 'subtitleArabic')
  String? get subtitleArabic;
  @override
  bool get hasSubtitle;
  @override
  int get introEndTime;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Series _$SeriesFromJson(Map<String, dynamic> json) {
  return _Series.fromJson(json);
}

/// @nodoc
mixin _$Series {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get badge_text => throw _privateConstructorUsedError;
  String? get catchphrase => throw _privateConstructorUsedError;
  String? get translation => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  double get imdb => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get cover => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  List<Country>? get country => throw _privateConstructorUsedError;
  List<Season>? get seasons => throw _privateConstructorUsedError;
  String? get pesh => throw _privateConstructorUsedError;
  bool get isRoyalMember => throw _privateConstructorUsedError;
  int get subscriptionExpiry => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;
  bool get isDubbed => throw _privateConstructorUsedError;
  String? get dubbedAudioUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleKurdish')
  String? get subtitleKurdish => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleEnglish')
  String? get subtitleEnglish => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtitleArabic')
  String? get subtitleArabic => throw _privateConstructorUsedError;
  bool get hasSubtitle => throw _privateConstructorUsedError;
  int get introEndTime => throw _privateConstructorUsedError;
  int get genre_id => throw _privateConstructorUsedError;

  /// Serializes this Series to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res, Series>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      String? badge_text,
      String? catchphrase,
      String? translation,
      int year,
      double rating,
      double imdb,
      String type,
      String? duration,
      String image,
      String cover,
      String url,
      List<Genre>? genres,
      List<Country>? country,
      List<Season>? seasons,
      String? pesh,
      bool isRoyalMember,
      int subscriptionExpiry,
      List<Comment>? comments,
      bool isDubbed,
      String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') String? subtitleArabic,
      bool hasSubtitle,
      int introEndTime,
      int genre_id});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res, $Val extends Series>
    implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? badge_text = freezed,
    Object? catchphrase = freezed,
    Object? translation = freezed,
    Object? year = null,
    Object? rating = null,
    Object? imdb = null,
    Object? type = null,
    Object? duration = freezed,
    Object? image = null,
    Object? cover = null,
    Object? url = null,
    Object? genres = freezed,
    Object? country = freezed,
    Object? seasons = freezed,
    Object? pesh = freezed,
    Object? isRoyalMember = null,
    Object? subscriptionExpiry = null,
    Object? comments = freezed,
    Object? isDubbed = null,
    Object? dubbedAudioUrl = freezed,
    Object? subtitleKurdish = freezed,
    Object? subtitleEnglish = freezed,
    Object? subtitleArabic = freezed,
    Object? hasSubtitle = null,
    Object? introEndTime = null,
    Object? genre_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      badge_text: freezed == badge_text
          ? _value.badge_text
          : badge_text // ignore: cast_nullable_to_non_nullable
              as String?,
      catchphrase: freezed == catchphrase
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      seasons: freezed == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
      pesh: freezed == pesh
          ? _value.pesh
          : pesh // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoyalMember: null == isRoyalMember
          ? _value.isRoyalMember
          : isRoyalMember // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionExpiry: null == subscriptionExpiry
          ? _value.subscriptionExpiry
          : subscriptionExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      isDubbed: null == isDubbed
          ? _value.isDubbed
          : isDubbed // ignore: cast_nullable_to_non_nullable
              as bool,
      dubbedAudioUrl: freezed == dubbedAudioUrl
          ? _value.dubbedAudioUrl
          : dubbedAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleKurdish: freezed == subtitleKurdish
          ? _value.subtitleKurdish
          : subtitleKurdish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleEnglish: freezed == subtitleEnglish
          ? _value.subtitleEnglish
          : subtitleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleArabic: freezed == subtitleArabic
          ? _value.subtitleArabic
          : subtitleArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubtitle: null == hasSubtitle
          ? _value.hasSubtitle
          : hasSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      introEndTime: null == introEndTime
          ? _value.introEndTime
          : introEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      genre_id: null == genre_id
          ? _value.genre_id
          : genre_id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeriesImplCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$$SeriesImplCopyWith(
          _$SeriesImpl value, $Res Function(_$SeriesImpl) then) =
      __$$SeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      int price,
      String? badge_text,
      String? catchphrase,
      String? translation,
      int year,
      double rating,
      double imdb,
      String type,
      String? duration,
      String image,
      String cover,
      String url,
      List<Genre>? genres,
      List<Country>? country,
      List<Season>? seasons,
      String? pesh,
      bool isRoyalMember,
      int subscriptionExpiry,
      List<Comment>? comments,
      bool isDubbed,
      String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') String? subtitleArabic,
      bool hasSubtitle,
      int introEndTime,
      int genre_id});
}

/// @nodoc
class __$$SeriesImplCopyWithImpl<$Res>
    extends _$SeriesCopyWithImpl<$Res, _$SeriesImpl>
    implements _$$SeriesImplCopyWith<$Res> {
  __$$SeriesImplCopyWithImpl(
      _$SeriesImpl _value, $Res Function(_$SeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? badge_text = freezed,
    Object? catchphrase = freezed,
    Object? translation = freezed,
    Object? year = null,
    Object? rating = null,
    Object? imdb = null,
    Object? type = null,
    Object? duration = freezed,
    Object? image = null,
    Object? cover = null,
    Object? url = null,
    Object? genres = freezed,
    Object? country = freezed,
    Object? seasons = freezed,
    Object? pesh = freezed,
    Object? isRoyalMember = null,
    Object? subscriptionExpiry = null,
    Object? comments = freezed,
    Object? isDubbed = null,
    Object? dubbedAudioUrl = freezed,
    Object? subtitleKurdish = freezed,
    Object? subtitleEnglish = freezed,
    Object? subtitleArabic = freezed,
    Object? hasSubtitle = null,
    Object? introEndTime = null,
    Object? genre_id = null,
  }) {
    return _then(_$SeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      badge_text: freezed == badge_text
          ? _value.badge_text
          : badge_text // ignore: cast_nullable_to_non_nullable
              as String?,
      catchphrase: freezed == catchphrase
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String?,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      cover: null == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<Country>?,
      seasons: freezed == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>?,
      pesh: freezed == pesh
          ? _value.pesh
          : pesh // ignore: cast_nullable_to_non_nullable
              as String?,
      isRoyalMember: null == isRoyalMember
          ? _value.isRoyalMember
          : isRoyalMember // ignore: cast_nullable_to_non_nullable
              as bool,
      subscriptionExpiry: null == subscriptionExpiry
          ? _value.subscriptionExpiry
          : subscriptionExpiry // ignore: cast_nullable_to_non_nullable
              as int,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
      isDubbed: null == isDubbed
          ? _value.isDubbed
          : isDubbed // ignore: cast_nullable_to_non_nullable
              as bool,
      dubbedAudioUrl: freezed == dubbedAudioUrl
          ? _value.dubbedAudioUrl
          : dubbedAudioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleKurdish: freezed == subtitleKurdish
          ? _value.subtitleKurdish
          : subtitleKurdish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleEnglish: freezed == subtitleEnglish
          ? _value.subtitleEnglish
          : subtitleEnglish // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleArabic: freezed == subtitleArabic
          ? _value.subtitleArabic
          : subtitleArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      hasSubtitle: null == hasSubtitle
          ? _value.hasSubtitle
          : hasSubtitle // ignore: cast_nullable_to_non_nullable
              as bool,
      introEndTime: null == introEndTime
          ? _value.introEndTime
          : introEndTime // ignore: cast_nullable_to_non_nullable
              as int,
      genre_id: null == genre_id
          ? _value.genre_id
          : genre_id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeriesImpl extends _Series {
  const _$SeriesImpl(
      {this.id = 0,
      this.title = "",
      this.description = "",
      this.price = 0,
      this.badge_text,
      this.catchphrase,
      this.translation = "",
      this.year = 0,
      this.rating = 0.0,
      this.imdb = 0.0,
      this.type = "series",
      this.duration = "",
      this.image = "",
      this.cover = "",
      this.url = "",
      final List<Genre>? genres = const [],
      final List<Country>? country = const [],
      final List<Season>? seasons = const [],
      this.pesh,
      this.isRoyalMember = false,
      this.subscriptionExpiry = 0,
      final List<Comment>? comments = const [],
      this.isDubbed = false,
      this.dubbedAudioUrl = "",
      @JsonKey(name: 'subtitleKurdish') this.subtitleKurdish = "",
      @JsonKey(name: 'subtitleEnglish') this.subtitleEnglish = "",
      @JsonKey(name: 'subtitleArabic') this.subtitleArabic = "",
      this.hasSubtitle = false,
      this.introEndTime = 0,
      this.genre_id = 0})
      : _genres = genres,
        _country = country,
        _seasons = seasons,
        _comments = comments,
        super._();

  factory _$SeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeriesImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int price;
  @override
  final String? badge_text;
  @override
  final String? catchphrase;
  @override
  @JsonKey()
  final String? translation;
  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final double imdb;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String? duration;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String cover;
  @override
  @JsonKey()
  final String url;
  final List<Genre>? _genres;
  @override
  @JsonKey()
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Country>? _country;
  @override
  @JsonKey()
  List<Country>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Season>? _seasons;
  @override
  @JsonKey()
  List<Season>? get seasons {
    final value = _seasons;
    if (value == null) return null;
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pesh;
  @override
  @JsonKey()
  final bool isRoyalMember;
  @override
  @JsonKey()
  final int subscriptionExpiry;
  final List<Comment>? _comments;
  @override
  @JsonKey()
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isDubbed;
  @override
  @JsonKey()
  final String? dubbedAudioUrl;
  @override
  @JsonKey(name: 'subtitleKurdish')
  final String? subtitleKurdish;
  @override
  @JsonKey(name: 'subtitleEnglish')
  final String? subtitleEnglish;
  @override
  @JsonKey(name: 'subtitleArabic')
  final String? subtitleArabic;
  @override
  @JsonKey()
  final bool hasSubtitle;
  @override
  @JsonKey()
  final int introEndTime;
  @override
  @JsonKey()
  final int genre_id;

  @override
  String toString() {
    return 'Series(id: $id, title: $title, description: $description, price: $price, badge_text: $badge_text, catchphrase: $catchphrase, translation: $translation, year: $year, rating: $rating, imdb: $imdb, type: $type, duration: $duration, image: $image, cover: $cover, url: $url, genres: $genres, country: $country, seasons: $seasons, pesh: $pesh, isRoyalMember: $isRoyalMember, subscriptionExpiry: $subscriptionExpiry, comments: $comments, isDubbed: $isDubbed, dubbedAudioUrl: $dubbedAudioUrl, subtitleKurdish: $subtitleKurdish, subtitleEnglish: $subtitleEnglish, subtitleArabic: $subtitleArabic, hasSubtitle: $hasSubtitle, introEndTime: $introEndTime, genre_id: $genre_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.badge_text, badge_text) ||
                other.badge_text == badge_text) &&
            (identical(other.catchphrase, catchphrase) ||
                other.catchphrase == catchphrase) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imdb, imdb) || other.imdb == imdb) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            (identical(other.pesh, pesh) || other.pesh == pesh) &&
            (identical(other.isRoyalMember, isRoyalMember) ||
                other.isRoyalMember == isRoyalMember) &&
            (identical(other.subscriptionExpiry, subscriptionExpiry) ||
                other.subscriptionExpiry == subscriptionExpiry) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isDubbed, isDubbed) ||
                other.isDubbed == isDubbed) &&
            (identical(other.dubbedAudioUrl, dubbedAudioUrl) ||
                other.dubbedAudioUrl == dubbedAudioUrl) &&
            (identical(other.subtitleKurdish, subtitleKurdish) ||
                other.subtitleKurdish == subtitleKurdish) &&
            (identical(other.subtitleEnglish, subtitleEnglish) ||
                other.subtitleEnglish == subtitleEnglish) &&
            (identical(other.subtitleArabic, subtitleArabic) ||
                other.subtitleArabic == subtitleArabic) &&
            (identical(other.hasSubtitle, hasSubtitle) ||
                other.hasSubtitle == hasSubtitle) &&
            (identical(other.introEndTime, introEndTime) ||
                other.introEndTime == introEndTime) &&
            (identical(other.genre_id, genre_id) ||
                other.genre_id == genre_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        price,
        badge_text,
        catchphrase,
        translation,
        year,
        rating,
        imdb,
        type,
        duration,
        image,
        cover,
        url,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_country),
        const DeepCollectionEquality().hash(_seasons),
        pesh,
        isRoyalMember,
        subscriptionExpiry,
        const DeepCollectionEquality().hash(_comments),
        isDubbed,
        dubbedAudioUrl,
        subtitleKurdish,
        subtitleEnglish,
        subtitleArabic,
        hasSubtitle,
        introEndTime,
        genre_id
      ]);

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      __$$SeriesImplCopyWithImpl<_$SeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeriesImplToJson(
      this,
    );
  }
}

abstract class _Series extends Series {
  const factory _Series(
      {final int id,
      final String title,
      final String description,
      final int price,
      final String? badge_text,
      final String? catchphrase,
      final String? translation,
      final int year,
      final double rating,
      final double imdb,
      final String type,
      final String? duration,
      final String image,
      final String cover,
      final String url,
      final List<Genre>? genres,
      final List<Country>? country,
      final List<Season>? seasons,
      final String? pesh,
      final bool isRoyalMember,
      final int subscriptionExpiry,
      final List<Comment>? comments,
      final bool isDubbed,
      final String? dubbedAudioUrl,
      @JsonKey(name: 'subtitleKurdish') final String? subtitleKurdish,
      @JsonKey(name: 'subtitleEnglish') final String? subtitleEnglish,
      @JsonKey(name: 'subtitleArabic') final String? subtitleArabic,
      final bool hasSubtitle,
      final int introEndTime,
      final int genre_id}) = _$SeriesImpl;
  const _Series._() : super._();

  factory _Series.fromJson(Map<String, dynamic> json) = _$SeriesImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  String? get badge_text;
  @override
  String? get catchphrase;
  @override
  String? get translation;
  @override
  int get year;
  @override
  double get rating;
  @override
  double get imdb;
  @override
  String get type;
  @override
  String? get duration;
  @override
  String get image;
  @override
  String get cover;
  @override
  String get url;
  @override
  List<Genre>? get genres;
  @override
  List<Country>? get country;
  @override
  List<Season>? get seasons;
  @override
  String? get pesh;
  @override
  bool get isRoyalMember;
  @override
  int get subscriptionExpiry;
  @override
  List<Comment>? get comments;
  @override
  bool get isDubbed;
  @override
  String? get dubbedAudioUrl;
  @override
  @JsonKey(name: 'subtitleKurdish')
  String? get subtitleKurdish;
  @override
  @JsonKey(name: 'subtitleEnglish')
  String? get subtitleEnglish;
  @override
  @JsonKey(name: 'subtitleArabic')
  String? get subtitleArabic;
  @override
  bool get hasSubtitle;
  @override
  int get introEndTime;
  @override
  int get genre_id;

  /// Create a copy of Series
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeriesImplCopyWith<_$SeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
