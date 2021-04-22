import '../tdapi.dart';

/// A privacy setting for managing whether the user can be found by their
/// phone number. Checked only if the phone number is not known to the other
/// user. Can be set only to "Allow contacts" or "Allow all"
class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  const UserPrivacySettingAllowFindingByPhoneNumber();

  static const String CONSTRUCTOR =
      'userPrivacySettingAllowFindingByPhoneNumber';

  static UserPrivacySettingAllowFindingByPhoneNumber? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowFindingByPhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
