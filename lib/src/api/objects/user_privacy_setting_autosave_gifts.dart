import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether received gifts are automatically
/// shown on the user's profile page
@immutable
class UserPrivacySettingAutosaveGifts extends UserPrivacySetting {
  const UserPrivacySettingAutosaveGifts();

  static const String constructor = 'userPrivacySettingAutosaveGifts';

  static UserPrivacySettingAutosaveGifts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAutosaveGifts();
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{'@type': constructor};

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
