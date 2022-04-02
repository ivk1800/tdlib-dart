import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A privacy setting for managing whether the user's profile photo is visible
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  const UserPrivacySettingShowProfilePhoto();

  static const String CONSTRUCTOR = 'userPrivacySettingShowProfilePhoto';

  static UserPrivacySettingShowProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfilePhoto();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
