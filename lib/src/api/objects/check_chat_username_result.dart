import '../tdapi.dart';

/// Represents result of checking whether a username can be set for a chat
abstract class CheckChatUsernameResult extends TdObject {
  const CheckChatUsernameResult();

  static const String CONSTRUCTOR = 'checkChatUsernameResult';

  /// Inherited by:
  /// [CheckChatUsernameResultOk]
  /// [CheckChatUsernameResultUsernameInvalid]
  /// [CheckChatUsernameResultUsernameOccupied]
  /// [CheckChatUsernameResultPublicChatsTooMuch]
  /// [CheckChatUsernameResultPublicGroupsUnavailable]
  static CheckChatUsernameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case CheckChatUsernameResultOk.CONSTRUCTOR:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.CONSTRUCTOR:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMuch.CONSTRUCTOR:
        return CheckChatUsernameResultPublicChatsTooMuch.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.CONSTRUCTOR:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
