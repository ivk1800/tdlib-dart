import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Describes available user privacy settings
@immutable
abstract class UserPrivacySetting extends TdObject {
  const UserPrivacySetting();

  static const String constructor = 'userPrivacySetting';

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

    switch (json['@type']) {
      case UserPrivacySettingShowStatus.constructor:
        return UserPrivacySettingShowStatus.fromJson(json);
      case UserPrivacySettingShowProfilePhoto.constructor:
        return UserPrivacySettingShowProfilePhoto.fromJson(json);
      case UserPrivacySettingShowLinkInForwardedMessages.constructor:
        return UserPrivacySettingShowLinkInForwardedMessages.fromJson(json);
      case UserPrivacySettingShowPhoneNumber.constructor:
        return UserPrivacySettingShowPhoneNumber.fromJson(json);
      case UserPrivacySettingAllowChatInvites.constructor:
        return UserPrivacySettingAllowChatInvites.fromJson(json);
      case UserPrivacySettingAllowCalls.constructor:
        return UserPrivacySettingAllowCalls.fromJson(json);
      case UserPrivacySettingAllowPeerToPeerCalls.constructor:
        return UserPrivacySettingAllowPeerToPeerCalls.fromJson(json);
      case UserPrivacySettingAllowFindingByPhoneNumber.constructor:
        return UserPrivacySettingAllowFindingByPhoneNumber.fromJson(json);
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
