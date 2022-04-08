import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's profile photo is visible
@immutable
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  const UserPrivacySettingShowProfilePhoto();

  static const String constructor = 'userPrivacySettingShowProfilePhoto';

  static UserPrivacySettingShowProfilePhoto? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowProfilePhoto();
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
