import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A contact has registered with Telegram
class MessageContactRegistered extends MessageContent {
  const MessageContactRegistered();

  static const String CONSTRUCTOR = 'messageContactRegistered';

  static MessageContactRegistered? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const MessageContactRegistered();
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
