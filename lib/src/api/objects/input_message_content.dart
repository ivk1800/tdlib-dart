import '../tdapi.dart';

/// The content of a message to send
abstract class InputMessageContent extends TdObject {
  const InputMessageContent();

  static const String CONSTRUCTOR = 'inputMessageContent';

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

    switch (json["@type"]) {
      case InputMessageText.CONSTRUCTOR:
        return InputMessageText.fromJson(json);
      case InputMessageAnimation.CONSTRUCTOR:
        return InputMessageAnimation.fromJson(json);
      case InputMessageAudio.CONSTRUCTOR:
        return InputMessageAudio.fromJson(json);
      case InputMessageDocument.CONSTRUCTOR:
        return InputMessageDocument.fromJson(json);
      case InputMessagePhoto.CONSTRUCTOR:
        return InputMessagePhoto.fromJson(json);
      case InputMessageSticker.CONSTRUCTOR:
        return InputMessageSticker.fromJson(json);
      case InputMessageVideo.CONSTRUCTOR:
        return InputMessageVideo.fromJson(json);
      case InputMessageVideoNote.CONSTRUCTOR:
        return InputMessageVideoNote.fromJson(json);
      case InputMessageVoiceNote.CONSTRUCTOR:
        return InputMessageVoiceNote.fromJson(json);
      case InputMessageLocation.CONSTRUCTOR:
        return InputMessageLocation.fromJson(json);
      case InputMessageVenue.CONSTRUCTOR:
        return InputMessageVenue.fromJson(json);
      case InputMessageContact.CONSTRUCTOR:
        return InputMessageContact.fromJson(json);
      case InputMessageDice.CONSTRUCTOR:
        return InputMessageDice.fromJson(json);
      case InputMessageGame.CONSTRUCTOR:
        return InputMessageGame.fromJson(json);
      case InputMessageInvoice.CONSTRUCTOR:
        return InputMessageInvoice.fromJson(json);
      case InputMessagePoll.CONSTRUCTOR:
        return InputMessagePoll.fromJson(json);
      case InputMessageForwarded.CONSTRUCTOR:
        return InputMessageForwarded.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
