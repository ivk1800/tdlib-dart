import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user's online status is visible
@immutable
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  const UserPrivacySettingShowStatus();

  static const String constructor = 'userPrivacySettingShowStatus';

  static UserPrivacySettingShowStatus? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowStatus();
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
