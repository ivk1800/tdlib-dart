import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a single rule for managing user privacy settings
@immutable
abstract class UserPrivacySettingRule extends TdObject {
  const UserPrivacySettingRule();

  static const String constructor = 'userPrivacySettingRule';

  /// Inherited by:
  /// [UserPrivacySettingRuleAllowAll]
  /// [UserPrivacySettingRuleAllowChatMembers]
  /// [UserPrivacySettingRuleAllowContacts]
  /// [UserPrivacySettingRuleAllowUsers]
  /// [UserPrivacySettingRuleRestrictAll]
  /// [UserPrivacySettingRuleRestrictChatMembers]
  /// [UserPrivacySettingRuleRestrictContacts]
  /// [UserPrivacySettingRuleRestrictUsers]
  static UserPrivacySettingRule? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserPrivacySettingRuleAllowAll.constructor:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.constructor:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.constructor:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.constructor:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.constructor:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.constructor:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.constructor:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.constructor:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
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
