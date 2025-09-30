import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains privacy settings for chats with non-contacts
@immutable
class NewChatPrivacySettings extends TdObject {
  const NewChatPrivacySettings({
    required this.allowNewChatsFromUnknownUsers,
    required this.incomingPaidMessageStarCount,
  });

  /// [allowNewChatsFromUnknownUsers] True, if non-contacts users are able to
  /// write first to the current user. Telegram Premium subscribers are able to
  /// write first regardless of this setting
  final bool allowNewChatsFromUnknownUsers;

  /// [incomingPaidMessageStarCount] Number of Telegram Stars that must be paid
  /// for every incoming private message by non-contacts;
  /// 0-getOption("paid_message_star_count_max"). If positive, then
  /// allow_new_chats_from_unknown_users must be true. The current user will
  /// receive getOption("paid_message_earnings_per_mille") Telegram Stars for
  /// each 1000 Telegram Stars paid for message sending. Can be positive, only
  /// if getOption("can_enable_paid_messages") is true
  final int incomingPaidMessageStarCount;

  static const String constructor = 'newChatPrivacySettings';

  static NewChatPrivacySettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NewChatPrivacySettings(
      allowNewChatsFromUnknownUsers:
          json['allow_new_chats_from_unknown_users'] as bool,
      incomingPaidMessageStarCount:
          json['incoming_paid_message_star_count'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
    'allow_new_chats_from_unknown_users': allowNewChatsFromUnknownUsers,
    'incoming_paid_message_star_count': incomingPaidMessageStarCount,
    '@type': constructor,
  };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
