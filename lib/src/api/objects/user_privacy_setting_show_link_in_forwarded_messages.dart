import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A privacy setting for managing whether a link to the user's account is
/// included in forwarded messages
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  const UserPrivacySettingShowLinkInForwardedMessages();

  static const String CONSTRUCTOR =
      'userPrivacySettingShowLinkInForwardedMessages';

  static UserPrivacySettingShowLinkInForwardedMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingShowLinkInForwardedMessages();
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
