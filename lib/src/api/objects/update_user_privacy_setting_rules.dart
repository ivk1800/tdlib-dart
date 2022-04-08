import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Some privacy setting rules have been changed
@immutable
class UpdateUserPrivacySettingRules extends Update {
  const UpdateUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules rules;

  static const String constructor = 'updateUserPrivacySettingRules';

  static UpdateUserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserPrivacySettingRules(
      setting: UserPrivacySetting.fromJson(json['setting'])!,
      rules: UserPrivacySettingRules.fromJson(json['rules'])!,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'setting': setting.toJson(),
        'rules': rules.toJson(),
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
