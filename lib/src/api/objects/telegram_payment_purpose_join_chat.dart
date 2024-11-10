import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// The user joins a chat and subscribes to regular payments in Telegram Stars
@immutable
class TelegramPaymentPurposeJoinChat extends TelegramPaymentPurpose {
  const TelegramPaymentPurposeJoinChat({
    required this.inviteLink,
  });

  /// [inviteLink] Invite link to use
  final String inviteLink;

  static const String constructor = 'telegramPaymentPurposeJoinChat';

  static TelegramPaymentPurposeJoinChat? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return TelegramPaymentPurposeJoinChat(
      inviteLink: json['invite_link'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'invite_link': inviteLink,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
