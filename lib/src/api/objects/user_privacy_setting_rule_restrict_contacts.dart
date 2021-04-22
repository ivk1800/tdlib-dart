import '../tdapi.dart';

/// A rule to restrict all contacts of a user from doing something
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictContacts();

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictContacts';

  static UserPrivacySettingRuleRestrictContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictContacts();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
