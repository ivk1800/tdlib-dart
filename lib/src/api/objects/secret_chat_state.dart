import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes the current secret chat state
abstract class SecretChatState extends TdObject {
  const SecretChatState();

  static const String CONSTRUCTOR = 'secretChatState';

  /// Inherited by:
  /// [SecretChatStatePending]
  /// [SecretChatStateReady]
  /// [SecretChatStateClosed]
  static SecretChatState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case SecretChatStatePending.CONSTRUCTOR:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.CONSTRUCTOR:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.CONSTRUCTOR:
        return SecretChatStateClosed.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
