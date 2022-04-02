import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The username can be set
class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  const CheckChatUsernameResultOk();

  static const String CONSTRUCTOR = 'checkChatUsernameResultOk';

  static CheckChatUsernameResultOk? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultOk();
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
