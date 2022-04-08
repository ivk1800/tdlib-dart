import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The secret chat is not yet created; waiting for the other user to get
/// online
@immutable
class SecretChatStatePending extends SecretChatState {
  const SecretChatStatePending();

  static const String constructor = 'secretChatStatePending';

  static SecretChatStatePending? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const SecretChatStatePending();
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
