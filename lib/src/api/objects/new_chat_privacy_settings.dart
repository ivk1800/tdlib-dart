import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains privacy settings for new chats with non-contacts
@immutable
class NewChatPrivacySettings extends TdObject {
  const NewChatPrivacySettings({
    required this.allowNewChatsFromUnknownUsers,
  });

  /// [allowNewChatsFromUnknownUsers] True, if non-contacts users are able to
  /// write first to the current user. Telegram Premium subscribers are able to
  /// write first regardless of this setting
  final bool allowNewChatsFromUnknownUsers;

  static const String constructor = 'newChatPrivacySettings';

  static NewChatPrivacySettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NewChatPrivacySettings(
      allowNewChatsFromUnknownUsers:
          json['allow_new_chats_from_unknown_users'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'allow_new_chats_from_unknown_users': allowNewChatsFromUnknownUsers,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
