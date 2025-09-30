import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user can receive messages
/// without additional payment
@immutable
class UserPrivacySettingAllowUnpaidMessages extends UserPrivacySetting {
  const UserPrivacySettingAllowUnpaidMessages();

  static const String constructor = 'userPrivacySettingAllowUnpaidMessages';

  static UserPrivacySettingAllowUnpaidMessages? fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowUnpaidMessages();
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
