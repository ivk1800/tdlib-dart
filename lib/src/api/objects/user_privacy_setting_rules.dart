import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A list of privacy rules. Rules are matched in the specified order. The
/// first matched rule defines the privacy setting for a given user. If no
/// rule matches, the action is not allowed
class UserPrivacySettingRules extends TdObject {
  UserPrivacySettingRules({required this.rules});

  /// [rules] A list of rules
  final List<UserPrivacySettingRule> rules;

  static const String CONSTRUCTOR = 'userPrivacySettingRules';

  static UserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRules(
        rules: List<UserPrivacySettingRule>.from((json['rules'] ?? [])
            .map((item) => UserPrivacySettingRule.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'rules': rules.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
