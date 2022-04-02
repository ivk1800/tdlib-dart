import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// Describes available user privacy settings
abstract class UserPrivacySetting extends TdObject {
  const UserPrivacySetting();

  static const String CONSTRUCTOR = 'userPrivacySetting';

  /// Inherited by:
  /// [UserPrivacySettingShowStatus]
  /// [UserPrivacySettingShowProfilePhoto]
  /// [UserPrivacySettingShowLinkInForwardedMessages]
  /// [UserPrivacySettingShowPhoneNumber]
  /// [UserPrivacySettingAllowChatInvites]
  /// [UserPrivacySettingAllowCalls]
  /// [UserPrivacySettingAllowPeerToPeerCalls]
  /// [UserPrivacySettingAllowFindingByPhoneNumber]
  static UserPrivacySetting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case UserPrivacySettingShowStatus.CONSTRUCTOR:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.CONSTRUCTOR:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.CONSTRUCTOR:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.CONSTRUCTOR:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.CONSTRUCTOR:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.CONSTRUCTOR:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
