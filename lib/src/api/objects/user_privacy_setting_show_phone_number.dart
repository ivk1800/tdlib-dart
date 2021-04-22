import '../tdapi.dart';

/// A privacy setting for managing whether the user's phone number is visible
class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  const UserPrivacySettingShowPhoneNumber();

  static const String CONSTRUCTOR = 'userPrivacySettingShowPhoneNumber';

  static UserPrivacySettingShowPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowPhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
