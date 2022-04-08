import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single result of an inline query; for bots only
@immutable
abstract class InputInlineQueryResult extends TdObject {
  const InputInlineQueryResult();

  static const String constructor = 'inputInlineQueryResult';

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

    switch (json['@type']) {
      case InputInlineQueryResultAnimation.constructor:
        return InputInlineQueryResultAnimation.fromJson(json);
      case InputInlineQueryResultArticle.constructor:
        return InputInlineQueryResultArticle.fromJson(json);
      case InputInlineQueryResultAudio.constructor:
        return InputInlineQueryResultAudio.fromJson(json);
      case InputInlineQueryResultContact.constructor:
        return InputInlineQueryResultContact.fromJson(json);
      case InputInlineQueryResultDocument.constructor:
        return InputInlineQueryResultDocument.fromJson(json);
      case InputInlineQueryResultGame.constructor:
        return InputInlineQueryResultGame.fromJson(json);
      case InputInlineQueryResultLocation.constructor:
        return InputInlineQueryResultLocation.fromJson(json);
      case InputInlineQueryResultPhoto.constructor:
        return InputInlineQueryResultPhoto.fromJson(json);
      case InputInlineQueryResultSticker.constructor:
        return InputInlineQueryResultSticker.fromJson(json);
      case InputInlineQueryResultVenue.constructor:
        return InputInlineQueryResultVenue.fromJson(json);
      case InputInlineQueryResultVideo.constructor:
        return InputInlineQueryResultVideo.fromJson(json);
      case InputInlineQueryResultVoiceNote.constructor:
        return InputInlineQueryResultVoiceNote.fromJson(json);
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
