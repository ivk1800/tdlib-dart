import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents result of checking whether a username can be set for a chat
@immutable
abstract class CheckChatUsernameResult extends TdObject {
  const CheckChatUsernameResult();

  static const String constructor = 'checkChatUsernameResult';

  /// Inherited by:
  /// [CheckChatUsernameResultOk]
  /// [CheckChatUsernameResultPublicChatsTooMany]
  /// [CheckChatUsernameResultPublicGroupsUnavailable]
  /// [CheckChatUsernameResultUsernameInvalid]
  /// [CheckChatUsernameResultUsernameOccupied]
  /// [CheckChatUsernameResultUsernamePurchasable]
  static CheckChatUsernameResult? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case CheckChatUsernameResultOk.constructor:
        return CheckChatUsernameResultOk.fromJson(json);
      case CheckChatUsernameResultPublicChatsTooMany.constructor:
        return CheckChatUsernameResultPublicChatsTooMany.fromJson(json);
      case CheckChatUsernameResultPublicGroupsUnavailable.constructor:
        return CheckChatUsernameResultPublicGroupsUnavailable.fromJson(json);
      case CheckChatUsernameResultUsernameInvalid.constructor:
        return CheckChatUsernameResultUsernameInvalid.fromJson(json);
      case CheckChatUsernameResultUsernameOccupied.constructor:
        return CheckChatUsernameResultUsernameOccupied.fromJson(json);
      case CheckChatUsernameResultUsernamePurchasable.constructor:
        return CheckChatUsernameResultUsernamePurchasable.fromJson(json);
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
