import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Contains information about a Telegram Premium gift code
@immutable
class PremiumGiftCodeInfo extends TdObject {
  const PremiumGiftCodeInfo({
    required this.creatorId,
    required this.creationDate,
    required this.isFromGiveaway,
    required this.giveawayMessageId,
    required this.monthCount,
    required this.userId,
    required this.useDate,
  });

  /// [creatorId] Identifier of a chat or a user that created the gift code
  final MessageSender creatorId;

  /// [creationDate] Point in time (Unix timestamp) when the code was created
  final int creationDate;

  /// [isFromGiveaway] True, if the gift code was created for a giveaway
  final bool isFromGiveaway;

  /// [giveawayMessageId] Identifier of the corresponding giveaway message in
  /// the creator_id chat; can be 0 or an identifier of a deleted message
  final int giveawayMessageId;

  /// [monthCount] Number of month the Telegram Premium subscription will be
  /// active after code activation
  final int monthCount;

  /// [userId] Identifier of a user for which the code was created; 0 if none
  final int userId;

  /// [useDate] Point in time (Unix timestamp) when the code was activated; 0 if
  /// none
  final int useDate;

  static const String constructor = 'premiumGiftCodeInfo';

  static PremiumGiftCodeInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PremiumGiftCodeInfo(
      creatorId:
          MessageSender.fromJson(json['creator_id'] as Map<String, dynamic>?)!,
      creationDate: json['creation_date'] as int,
      isFromGiveaway: json['is_from_giveaway'] as bool,
      giveawayMessageId: json['giveaway_message_id'] as int,
      monthCount: json['month_count'] as int,
      userId: json['user_id'] as int,
      useDate: json['use_date'] as int,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'creator_id': creatorId.toJson(),
        'creation_date': creationDate,
        'is_from_giveaway': isFromGiveaway,
        'giveaway_message_id': giveawayMessageId,
        'month_count': monthCount,
        'user_id': userId,
        'use_date': useDate,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
