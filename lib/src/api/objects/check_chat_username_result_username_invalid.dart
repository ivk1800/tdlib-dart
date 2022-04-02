import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The username is invalid
class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  const CheckChatUsernameResultUsernameInvalid();

  static const String CONSTRUCTOR = 'checkChatUsernameResultUsernameInvalid';

  static CheckChatUsernameResultUsernameInvalid? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultUsernameInvalid();
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
