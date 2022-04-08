import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes the current secret chat state
@immutable
abstract class SecretChatState extends TdObject {
  const SecretChatState();

  static const String constructor = 'secretChatState';

  /// Inherited by:
  /// [SecretChatStatePending]
  /// [SecretChatStateReady]
  /// [SecretChatStateClosed]
  static SecretChatState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case SecretChatStatePending.constructor:
        return SecretChatStatePending.fromJson(json);
      case SecretChatStateReady.constructor:
        return SecretChatStateReady.fromJson(json);
      case SecretChatStateClosed.constructor:
        return SecretChatStateClosed.fromJson(json);
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
