import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A privacy setting for managing whether the user can be invited to chats
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  const UserPrivacySettingAllowChatInvites();

  static const String CONSTRUCTOR = 'userPrivacySettingAllowChatInvites';

  static UserPrivacySettingAllowChatInvites? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowChatInvites();
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
