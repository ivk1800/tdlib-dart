import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to allow all users to do something
@immutable
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowAll();

  static const String constructor = 'userPrivacySettingRuleAllowAll';

  static UserPrivacySettingRuleAllowAll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowAll();
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
