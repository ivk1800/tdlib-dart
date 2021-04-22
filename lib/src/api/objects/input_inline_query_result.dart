import '../tdapi.dart';

/// Represents a single result of an inline query; for bots only
abstract class InputInlineQueryResult extends TdObject {
  const InputInlineQueryResult();

  static const String CONSTRUCTOR = 'inputInlineQueryResult';

  /// Inherited by:
  /// [InputInlineQueryResultAnimation]
  /// [InputInlineQueryResultArticle]
  /// [InputInlineQueryResultAudio]
  /// [InputInlineQueryResultContact]
  /// [InputInlineQueryResultDocument]
  /// [InputInlineQueryResultGame]
  /// [InputInlineQueryResultLocation]
  /// [InputInlineQueryResultPhoto]
  /// [InputInlineQueryResultSticker]
  /// [InputInlineQueryResultVenue]
  /// [InputInlineQueryResultVideo]
  /// [InputInlineQueryResultVoiceNote]
  static InputInlineQueryResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case InputInlineQueryResultAnimation.CONSTRUCTOR:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.CONSTRUCTOR:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.CONSTRUCTOR:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.CONSTRUCTOR:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.CONSTRUCTOR:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.CONSTRUCTOR:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.CONSTRUCTOR:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.CONSTRUCTOR:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.CONSTRUCTOR:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.CONSTRUCTOR:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.CONSTRUCTOR:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.CONSTRUCTOR:
        return InputInlineQueryResultVoiceNote.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
