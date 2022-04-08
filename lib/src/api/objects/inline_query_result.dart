import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single result of an inline query
@immutable
abstract class InlineQueryResult extends TdObject {
  const InlineQueryResult();

  static const String constructor = 'inlineQueryResult';

  /// Inherited by:
  /// [InlineQueryResultArticle]
  /// [InlineQueryResultContact]
  /// [InlineQueryResultLocation]
  /// [InlineQueryResultVenue]
  /// [InlineQueryResultGame]
  /// [InlineQueryResultAnimation]
  /// [InlineQueryResultAudio]
  /// [InlineQueryResultDocument]
  /// [InlineQueryResultPhoto]
  /// [InlineQueryResultSticker]
  /// [InlineQueryResultVideo]
  /// [InlineQueryResultVoiceNote]
  static InlineQueryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InlineQueryResultArticle.constructor:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.constructor:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.constructor:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.constructor:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.constructor:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.constructor:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.constructor:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.constructor:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.constructor:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.constructor:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.constructor:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.constructor:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
