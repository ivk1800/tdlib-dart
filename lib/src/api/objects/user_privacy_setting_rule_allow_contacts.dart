import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to allow all of a user's contacts to do something
@immutable
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleAllowContacts();

  static const String constructor = 'userPrivacySettingRuleAllowContacts';

  static UserPrivacySettingRuleAllowContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleAllowContacts();
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
