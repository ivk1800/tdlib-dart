import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A privacy setting for managing whether the user's online status is visible
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  const UserPrivacySettingShowStatus();

  static const String CONSTRUCTOR = 'userPrivacySettingShowStatus';

  static UserPrivacySettingShowStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowStatus();
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
