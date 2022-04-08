import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to restrict all users from doing something
@immutable
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictAll();

  static const String constructor = 'userPrivacySettingRuleRestrictAll';

  static UserPrivacySettingRuleRestrictAll? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictAll();
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
