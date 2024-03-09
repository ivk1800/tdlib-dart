import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A privacy setting for managing whether the user can receive voice and
/// video messages in private chats; for Telegram Premium users only
@immutable
class UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages
    extends UserPrivacySetting {
  const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();

  static const String constructor =
      'userPrivacySettingAllowPrivateVoiceAndVideoNoteMessages';

  static UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPrivateVoiceAndVideoNoteMessages();
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
