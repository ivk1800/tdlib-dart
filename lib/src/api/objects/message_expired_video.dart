import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// An expired video message (self-destructed after TTL has elapsed)
class MessageExpiredVideo extends MessageContent {
  const MessageExpiredVideo();

  static const String CONSTRUCTOR = 'messageExpiredVideo';

  static MessageExpiredVideo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageExpiredVideo();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
