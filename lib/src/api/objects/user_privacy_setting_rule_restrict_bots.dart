import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A rule to restrict all bots from doing something
@immutable
class UserPrivacySettingRuleRestrictBots extends UserPrivacySettingRule {
  const UserPrivacySettingRuleRestrictBots();

  static const String constructor = 'userPrivacySettingRuleRestrictBots';

  static UserPrivacySettingRuleRestrictBots? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingRuleRestrictBots();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
