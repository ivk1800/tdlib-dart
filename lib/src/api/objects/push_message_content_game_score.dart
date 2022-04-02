import '../tdapi.dart';
import '../extensions/data_class_extensions.dart';

/// A new high score was achieved in a game
class PushMessageContentGameScore extends PushMessageContent {
  PushMessageContentGameScore(
      {required this.title, required this.score, required this.isPinned});

  /// [title] Game title, empty for pinned message
  final String title;

  /// [score] New score, 0 for pinned message
  final int score;

  /// [isPinned] True, if the message is a pinned message with the specified
  /// content
  final bool isPinned;

  static const String CONSTRUCTOR = 'pushMessageContentGameScore';

  static PushMessageContentGameScore? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushMessageContentGameScore(
        title: json['title'],
        score: json['score'],
        isPinned: json['is_pinned']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'score': this.score,
        'is_pinned': this.isPinned,
        '@type': CONSTRUCTOR
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
