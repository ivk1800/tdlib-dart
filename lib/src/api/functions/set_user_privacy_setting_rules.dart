import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Changes user privacy settings
/// Returns [Ok]
@immutable
class SetUserPrivacySettingRules extends TdFunction {
  const SetUserPrivacySettingRules({
    required this.setting,
    required this.rules,
  });

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] The new privacy rules
  final UserPrivacySettingRules rules;

  static const String constructor = 'setUserPrivacySettingRules';

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
