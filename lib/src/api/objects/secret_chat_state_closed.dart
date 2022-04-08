import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The secret chat is closed
@immutable
class SecretChatStateClosed extends SecretChatState {
  const SecretChatStateClosed();

  static const String constructor = 'secretChatStateClosed';

  static SecretChatStateClosed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStateClosed();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
