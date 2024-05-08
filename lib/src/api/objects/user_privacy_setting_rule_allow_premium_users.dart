import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to allow all Premium Users to do something; currently, allowed only
/// for userPrivacySettingAllowChatInvites
@immutable
class UserPrivacySettingRuleAllowPremiumUsers extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowPremiumUsers();

  static const String constructor = 'userPrivacySettingRuleAllowPremiumUsers';

  static UserPrivacySettingRuleAllowPremiumUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowPremiumUsers();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
