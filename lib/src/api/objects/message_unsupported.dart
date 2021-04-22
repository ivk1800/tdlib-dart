import '../tdapi.dart';

/// Message content that is not supported in the current TDLib version
class MessageUnsupported extends MessageContent {
  const MessageUnsupported();

  static const String CONSTRUCTOR = 'messageUnsupported';

  static MessageUnsupported? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageUnsupported();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
