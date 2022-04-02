import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

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

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
