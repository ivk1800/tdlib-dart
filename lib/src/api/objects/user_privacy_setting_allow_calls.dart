import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user can be called
@immutable
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowCalls();

  static const String constructor = 'userPrivacySettingAllowCalls';

  static UserPrivacySettingAllowCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowCalls();
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
