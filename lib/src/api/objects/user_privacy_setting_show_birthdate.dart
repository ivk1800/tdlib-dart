import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's birthdate is visible
@immutable
class UserPrivacySettingShowBirthdate extends UserPrivacySetting {
  const UserPrivacySettingShowBirthdate();

  static const String constructor = 'userPrivacySettingShowBirthdate';

  static UserPrivacySettingShowBirthdate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowBirthdate();
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
