import '../tdapi.dart';

/// An expired photo message (self-destructed after TTL has elapsed)
class MessageExpiredPhoto extends MessageContent {
  const MessageExpiredPhoto();

  static const String CONSTRUCTOR = 'messageExpiredPhoto';

  static MessageExpiredPhoto? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredPhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
