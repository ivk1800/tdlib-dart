import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A rule to allow all users to do something
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowAll();

  static const String CONSTRUCTOR = 'userPrivacySettingRuleAllowAll';

  static UserPrivacySettingRuleAllowAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowAll();
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
