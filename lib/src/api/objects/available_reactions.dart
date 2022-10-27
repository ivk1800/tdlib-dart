import 'package:meta/meta.dart';
import '../extensions/data_class_extensions.dart';
import '../tdapi.dart';

/// Represents a list of reactions that can be added to a message
@immutable
class AvailableReactions extends TdObject {
  const AvailableReactions({
    required this.topReactions,
    required this.recentReactions,
    required this.popularReactions,
    required this.allowCustomEmoji,
  });

  /// [topReactions] List of reactions to be shown at the top
  final List<AvailableReaction> topReactions;

  /// [recentReactions] List of recently used reactions
  final List<AvailableReaction> recentReactions;

  /// [popularReactions] List of popular reactions
  final List<AvailableReaction> popularReactions;

  /// [allowCustomEmoji] True, if custom emoji reactions could be added by
  /// Telegram Premium subscribers
  final bool allowCustomEmoji;

  static const String constructor = 'availableReactions';

  static AvailableReactions? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AvailableReactions(
      topReactions: List<AvailableReaction>.from((json['top_reactions'] ?? [])
          .map((item) => AvailableReaction.fromJson(item))
          .toList()),
      recentReactions: List<AvailableReaction>.from(
          (json['recent_reactions'] ?? [])
              .map((item) => AvailableReaction.fromJson(item))
              .toList()),
      popularReactions: List<AvailableReaction>.from(
          (json['popular_reactions'] ?? [])
              .map((item) => AvailableReaction.fromJson(item))
              .toList()),
      allowCustomEmoji: json['allow_custom_emoji'],
    );
  }

  @override
  String getConstructor() => constructor;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'top_reactions': topReactions.map((item) => item.toJson()).toList(),
        'recent_reactions':
            recentReactions.map((item) => item.toJson()).toList(),
        'popular_reactions':
            popularReactions.map((item) => item.toJson()).toList(),
        'allow_custom_emoji': allowCustomEmoji,
        '@type': constructor,
      };

  @override
  bool operator ==(Object other) => overriddenEquality(other);

  @override
  int get hashCode => overriddenHashCode;
}
