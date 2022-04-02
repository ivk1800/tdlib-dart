import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// The user can't be a member of a public supergroup
class CheckChatUsernameResultPublicGroupsUnavailable
    extends CheckChatUsernameResult {
  const CheckChatUsernameResultPublicGroupsUnavailable();

  static const String CONSTRUCTOR =
      'checkChatUsernameResultPublicGroupsUnavailable';

  static CheckChatUsernameResultPublicGroupsUnavailable? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const CheckChatUsernameResultPublicGroupsUnavailable();
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
