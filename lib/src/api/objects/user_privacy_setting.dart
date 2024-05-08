import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes available user privacy settings
@immutable
abstract class UserPrivacySetting extends TdObject {
  const UserPrivacySetting();

  static const String constructor = 'userPrivacySetting';

  /// Inherited by:
  /// [UserPrivacySettingAllowCalls]
  /// [UserPrivacySettingAllowChatInvites]
  /// [UserPrivacySettingAllowFindingByPhoneNumber]
  /// [UserPrivacySettingAllowPeerToPeerCalls]
  /// [UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages]
  /// [UserPrivacySettingShowBio]
  /// [UserPrivacySettingShowBirthdate]
  /// [UserPrivacySettingShowLinkInForwardedMessages]
  /// [UserPrivacySettingShowPhoneNumber]
  /// [UserPrivacySettingShowProfilePhoto]
  /// [UserPrivacySettingShowStatus]
  static UserPrivacySetting? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json['@type']) {
      case UserPrivacySettingAllowCalls.constructor:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowChatInvites.constructor:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.constructor:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.constructor:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.constructor:
        return UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages.fromJson(
            json);
      case UserPrivacySettingShowBio.constructor:
        return UserPrivacySettingShowBio.fromJson(json);
      case UserPrivacySettingShowBirthdate.constructor:
        return UserPrivacySettingShowBirthdate.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.constructor:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.constructor:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.constructor:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowStatus.constructor:
        return UserPrivacySettingShowStatus.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => constructor;

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
