import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Represents a single result of an inline query
abstract class InlineQueryResult extends TdObject {
  const InlineQueryResult();

  static const String CONSTRUCTOR = 'inlineQueryResult';

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

    switch (json["@type"]) {
      case InlineQueryResultArticle.CONSTRUCTOR:
        return InlineQueryResultArticle.fromJson(json);
      case InlineQueryResultContact.CONSTRUCTOR:
        return InlineQueryResultContact.fromJson(json);
      case InlineQueryResultLocation.CONSTRUCTOR:
        return InlineQueryResultLocation.fromJson(json);
      case InlineQueryResultVenue.CONSTRUCTOR:
        return InlineQueryResultVenue.fromJson(json);
      case InlineQueryResultGame.CONSTRUCTOR:
        return InlineQueryResultGame.fromJson(json);
      case InlineQueryResultAnimation.CONSTRUCTOR:
        return InlineQueryResultAnimation.fromJson(json);
      case InlineQueryResultAudio.CONSTRUCTOR:
        return InlineQueryResultAudio.fromJson(json);
      case InlineQueryResultDocument.CONSTRUCTOR:
        return InlineQueryResultDocument.fromJson(json);
      case InlineQueryResultPhoto.CONSTRUCTOR:
        return InlineQueryResultPhoto.fromJson(json);
      case InlineQueryResultSticker.CONSTRUCTOR:
        return InlineQueryResultSticker.fromJson(json);
      case InlineQueryResultVideo.CONSTRUCTOR:
        return InlineQueryResultVideo.fromJson(json);
      case InlineQueryResultVoiceNote.CONSTRUCTOR:
        return InlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
