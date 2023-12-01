import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A Telegram Premium gift code was created for the user
@immutable
class MessagePremiumGiftCode extends MessageContent {
  const MessagePremiumGiftCode({
    required this.creatorId,
    required this.isFromGiveaway,
    required this.isUnclaimed,
    required this.monthCount,
    this.sticker,
    required this.code,
  });

  /// [creatorId] Identifier of a chat or a user that created the gift code
  final MessageSender creatorId;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [isUnclaimed] True, if the winner for the corresponding Telegram Premium
  /// subscription wasn't chosen
  final bool isUnclaimed;

  /// [monthCount] Number of month the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [sticker] A sticker to be shown in the message; may be null if unknown
  final Sticker? sticker;

  /// [code] The gift code
  final String code;

  static const String constructor = 'messagePremiumGiftCode';

  static MessagePremiumGiftCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePremiumGiftCode(
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?)!,
      isFromGiveaway: json['is_from_giveaway'] as bool,
      isUnclaimed: json['is_unclaimed'] as bool,
      monthCount: json['month_count'] as int,
      sticker: Sticker.fromJson(json['sticker'] as Map<String, dynamic>?),
      code: json['code'] as String,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creator_id': creatorId.toJson(),
        'is_from_giveaway': isFromGiveaway,
        'is_unclaimed': isUnclaimed,
        'month_count': monthCount,
        'sticker': sticker?.toJson(),
        'code': code,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
