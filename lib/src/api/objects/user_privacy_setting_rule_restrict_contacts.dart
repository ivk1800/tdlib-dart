import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to restrict all contacts of the user from doing something
@immutable
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictContacts();

  static const String constructor = 'userPrivacySettingRuleRestrictContacts';

  static UserPrivacySettingRuleRestrictContacts? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictContacts();
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
