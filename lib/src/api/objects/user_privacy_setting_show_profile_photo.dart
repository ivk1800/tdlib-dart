import '../tdapi.dart';

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
}
