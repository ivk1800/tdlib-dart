import '../tdapi.dart';

/// A rule to restrict all users from doing something
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictAll();

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictAll';

  static UserPrivacySettingRuleRestrictAll? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictAll();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
