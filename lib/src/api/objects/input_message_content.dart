import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The content of a message to send
@immutable
abstract class InputMessageContent extends TdObject {
  const InputMessageContent();

  static const String constructor = 'inputMessageContent';

  /// Inherited by:
  /// [InputMessageText]
  /// [InputMessageAnimation]
  /// [InputMessageAudio]
  /// [InputMessageDocument]
  /// [InputMessagePhoto]
  /// [InputMessageSticker]
  /// [InputMessageVideo]
  /// [InputMessageVideoNote]
  /// [InputMessageVoiceNote]
  /// [InputMessageLocation]
  /// [InputMessageVenue]
  /// [InputMessageContact]
  /// [InputMessageDice]
  /// [InputMessageGame]
  /// [InputMessageInvoice]
  /// [InputMessagePoll]
  /// [InputMessageForwarded]
  static InputMessageContent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case InputMessageText.constructor:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.constructor:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.constructor:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.constructor:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.constructor:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.constructor:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.constructor:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.constructor:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.constructor:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.constructor:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.constructor:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.constructor:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.constructor:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.constructor:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.constructor:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.constructor:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.constructor:
        return InputMessageForwarded.fromJson(json);
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
