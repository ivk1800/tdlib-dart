import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a Telegram Premium giveaway
@immutable
class PushMessageContentPremiumGiveaway extends PushMessageContent {
  const PushMessageContentPremiumGiveaway({
    required this.winnerCount,
    required this.monthCount,
    required this.isPinned,
  });

  /// [winnerCount] Number of users which will receive Telegram Premium
  /// subscription gift codes; 0 for pinned message
  final int winnerCount;

  /// [monthCount] Number of months the Telegram Premium subscription will be
  /// active after code activation; 0 for pinned message
  final int monthCount;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentPremiumGiveaway';

  static PushMessageContentPremiumGiveaway? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentPremiumGiveaway(
      winnerCount: json['winner_count'] as int,
      monthCount: json['month_count'] as int,
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'winner_count': winnerCount,
        'month_count': monthCount,
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
