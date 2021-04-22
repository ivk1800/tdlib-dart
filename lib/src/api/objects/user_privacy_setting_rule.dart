import '../tdapi.dart';

/// Represents a single rule for managing privacy settings
abstract class UserPrivacySettingRule extends TdObject {
  const UserPrivacySettingRule();

  static const String CONSTRUCTOR = 'userPrivacySettingRule';

  /// Inherited by:
  /// [UserPrivacySettingRuleAllowAll]
  /// [UserPrivacySettingRuleAllowContacts]
  /// [UserPrivacySettingRuleAllowUsers]
  /// [UserPrivacySettingRuleAllowChatMembers]
  /// [UserPrivacySettingRuleRestrictAll]
  /// [UserPrivacySettingRuleRestrictContacts]
  /// [UserPrivacySettingRuleRestrictUsers]
  /// [UserPrivacySettingRuleRestrictChatMembers]
  static UserPrivacySettingRule? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case UserPrivacySettingRuleAllowAll.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowAll.fromJson(json);
      case UserPrivacySettingRuleAllowContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowContacts.fromJson(json);
      case UserPrivacySettingRuleAllowUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowUsers.fromJson(json);
      case UserPrivacySettingRuleAllowChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleAllowChatMembers.fromJson(json);
      case UserPrivacySettingRuleRestrictAll.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictAll.fromJson(json);
      case UserPrivacySettingRuleRestrictContacts.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictContacts.fromJson(json);
      case UserPrivacySettingRuleRestrictUsers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictUsers.fromJson(json);
      case UserPrivacySettingRuleRestrictChatMembers.CONSTRUCTOR:
        return UserPrivacySettingRuleRestrictChatMembers.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
