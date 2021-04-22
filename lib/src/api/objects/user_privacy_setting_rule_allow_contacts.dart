import '../tdapi.dart';

/// A rule to allow all of a user's contacts to do something
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowContacts();

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowContacts';

  static UserPrivacySettingRuleAllowContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowContacts();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
