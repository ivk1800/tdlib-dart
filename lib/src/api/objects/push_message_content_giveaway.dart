import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// A message with a giveaway
@immutable
class PushMessageContentGiveaway extends PushMessageContent {
  const PushMessageContentGiveaway({
    required this.winnerCount,
    this.prize,
    required this.isPinned,
  });

  /// [winnerCount] Number of users which will receive giveaway prizes; 0 for
  /// pinned message
  final int winnerCount;

  /// [prize] Prize of the giveaway; may be null for pinned message
  final GiveawayPrize? prize;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String constructor = 'pushMessageContentGiveaway';

  static PushMessageContentGiveaway? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGiveaway(
      winnerCount: json['winner_count'] as int,
      prize: GiveawayPrize.fromJson(json['prize'] as Map<String, dynamic>?),
      isPinned: json['is_pinned'] as bool,
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'winner_count': winnerCount,
        'prize': prize?.toJson(),
        'is_pinned': isPinned,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
