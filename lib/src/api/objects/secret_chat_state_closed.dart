import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The secret chat is closed
class SecretChatStateClosed extends SecretChatState {
  const SecretChatStateClosed();

  static const String CONSTRUCTOR = 'secretChatStateClosed';

  static SecretChatStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateClosed();
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
